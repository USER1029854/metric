# Metric — Contract Inventory (Defensive Review)

**Protocol:** Metric (permissionless AMM / DEX)
**Website:** https://www.metric.xyz/
**DefiLlama:** https://defillama.com/protocol/metric (parent slug `metric`, children `metric-v2` and `metric-v1`)
**Category:** Dexs / AMM
**Research date:** 2026-08-12
**Scope:** Inventory only. No exploit instructions or vulnerability write-ups are included.

> This is a **100%-EVM** protocol. No non-EVM chain is involved, so no non-EVM explorer/API access was required.

## TL;DR

Metric is a permissionless AMM: **anyone can call the factory to create a pool**, and (in the newer factory) the pool creator becomes that pool's own `admin`/fee recipient and supplies its own price-oracle contract. There is no single upgradeable "core" contract — instead there are **two independent, immutable, unverified factory contracts**, each deployed at the *same address on every chain* via deterministic `CREATE2`, plus one bespoke contract per pool (also unverified).

- **10 chains**, not 9: DefiLlama's dashboard only shows 9 (Ethereum, Base, Arbitrum, BSC, Avalanche, Polygon, MegaETH, HyperEVM/"Hyperliquid L1", Monad). On-chain data shows the legacy factory is **also live on Robinhood Chain** (chain id 4663), which DefiLlama does not track for TVL at all — it currently holds the **3rd-largest pool** found (~$348k).
- **318 pools** were enumerated on-chain across both factories/10 chains; **44 hold ≥ $10,000** and are included below. The other 274 are real, permissionless, and mostly dust (many are exactly $0).
- **Every single contract in this inventory is unverified** on every chain (factories and pools alike) — checked via Etherscan V2, Blockscout, and Sourcify v2. All source/ABI artifacts in this repo are **decompiled**, not original source.
- **Biggest funded contract:** `0x948462ce2b2eae59c65d9f2f94b3d8de4fbd4396` (Ethereum), the sUSDe/USDe pool, **≈ $510,468**.
- No proxies exist anywhere in this inventory (EIP-1967 impl/admin/beacon slots read zero on every contract checked) — so there is nothing to report under "implementation changed recently."

---

## 1. Chains

| Chain | DefiLlama chain key | Chain ID | In DefiLlama TVL dashboard? | Factory A live? | Factory B live? |
|---|---|---|---|---|---|
| Ethereum | Ethereum | 1 | Yes | Yes | Yes |
| Base | Base | 8453 | Yes | Yes | Yes |
| Arbitrum | Arbitrum | 42161 | Yes | Yes | Yes |
| BNB Smart Chain | BSC | 56 | Yes | Yes | No |
| Avalanche | Avalanche | 43114 | Yes | Yes | No |
| Polygon | Polygon | 137 | Yes | Yes | No |
| MegaETH | MegaETH | 4326 | Yes | Yes | No |
| HyperEVM | Hyperliquid L1 | 999 | Yes | Yes | Yes |
| Monad | Monad | 143 | Yes | Yes | No |
| **Robinhood Chain** | *(not shown)* | 4663 | **No** | **Yes** | Yes |

A broad sweep of every other mainnet chain Etherscan V2 indexes (34 chains total, including OP Mainnet, Celo, Linea, Scroll, zkSync, etc. — see `pools/_shared/…` research notes) found **no further deployments** of either factory address. See the COULD-NOT-ENUMERATE section for the limits of that sweep.

---

## 2. Architecture: two parallel, unrelated factory deployments

Metric runs **two independently-deployed AMM factory contracts** side by side. Both are still actively creating new pools as of the research date (last Ethereum pool creation seen: 2026-08-12; last Base "Factory B" pool creation: 2026-08-10) — there is **no evidence of migration** from one to the other; DefiLlama's own naming ("Metric V1" vs "Metric V2") does not correspond cleanly to deployment chronology (Factory A predates Factory B on-chain despite the "V1"/"V2" labels), so this README avoids that naming and calls them **Factory A** and **Factory B**.

| | Factory A ("legacy") | Factory B ("v1") |
|---|---|---|
| Address (same on every chain) | `0xe22F9fc0f04486dE25ed6CF1800a4a47aFD82e0C` | `0x622911384e7973439b8be305f5e3Fc3c5736EDe4` |
| Runtime bytecode | 3,711 bytes, sha256 `467b3602…` | 16,282 bytes, sha256 `6b1f0c37…` |
| First pool created | 2026-02-23 (Ethereum) | 2026-07-13 (Ethereum) |
| Chains live | Ethereum, Base, Arbitrum, BSC, Avalanche, Polygon, MegaETH, HyperEVM, Monad, Robinhood (10) | Ethereum, Base, Arbitrum, HyperEVM, Robinhood (5) |
| Pool template size | 19,335 bytes runtime | 20,392 bytes runtime |
| Pools discovered on-chain | 279 | 39 |
| Pools ≥ $10k | 39 | 5 |
| Per-pool admin/pause/fee-recipient set by pool creator? | No (only a per-pool price oracle) | **Yes** (`admin`, `priceProvider`, `adminFeeDestination`, `extensions[]` all set at pool-creation time by whoever calls `createPool`) |

Both factories are plain `Ownable2Step`-style contracts (`owner`, `pendingOwner`, `transferOwnership`, `acceptOwnership`, `renounceOwnership`) with **no delegatecall / no EIP-1967 storage** — confirmed by reading the implementation, admin, and beacon storage slots directly (all read `0x000…0`). They are **not proxies**.

Both factories expose an owner-only `collectTokens(address token0, address token1, uint256 amount)` (selector `0x237f4b66`) that lets the `owner()` sweep any ERC-20 balance the **factory contract itself** holds out to an arbitrary address — this is the protocol-fee collection mechanism, and it is why factory contracts (not just pools) are in scope for this inventory even though they usually hold ~$0 directly.

---

## 3. Full inventory (contracts holding/controlling ≥ $10,000)

### 3.1 Admin/governance/registry contracts (the two factories, all chain instances)

Each factory is the *same bytecode/address* on every chain it's deployed to (deterministic CREATE2, hash-verified), so each gets **one subfolder** (`factory-A/`, `factory-B/`) covering all its chain instances; per-chain balances/verification are itemized inside `metadata.json`.

| Contract | Role | Chains | Controls | Own balance found |
|---|---|---|---|---|
| [`factory-A/`](factory-A/) `0xe22F9fc0f04486dE25ed6CF1800a4a47aFD82e0C` | admin/governance + registry (permissionless pool factory, owner fee-sweep) | 10 chains (§1) | Deploys/registers all 279 Factory-A pools (~$4.4M across chains at TVL scale) | **HyperEVM: ≈ $8,254** in 9 different ERC-20s pending owner `collectTokens()` (see §5, dropped — under $10k on its own, noted for completeness). MegaETH ≈ $211. All other chains ≈ $0. Native balance: 0 everywhere. |
| [`factory-B/`](factory-B/) `0x622911384e7973439b8be305f5e3Fc3c5736EDe4` | admin/governance + registry (permissionless pool factory; also exposes `pausePool`/`unpausePool`/`setPoolFees` globally) | 5 chains (§1) | Deploys/registers all 39 Factory-B pools | $0 / no balance on any chain checked |

Owner-callable surface (both factories, decompiled — see §6): `transferOwnership(address)`, `acceptOwnership()`, `renounceOwnership()`, `collectTokens(address,address,uint256)`, plus factory-B-only: `pausePool(address)`, `unpausePool(address)`, `setPoolFees(...)`, and several `Unresolved_*` selectors controlling default fee parameters (`protocolFee()`, `MAX_PROTOCOL_FEE()` getters exist on both). We could not independently confirm the current `owner()` address on-chain within the scope of this pass — see COULD-NOT-ENUMERATE.

### 3.2 Pools (≥ $10k), one subfolder each under [`pools/`](pools/)

All 44 share one of two decompiled templates (`pools/_shared/legacyA-template/` or `pools/_shared/v1B-template/`) — each pool's own folder holds its own `metadata.json` (balances, token pair, creation tx, oracle/admin addresses) and its own `runtime_bytecode.hex`, and points back at the shared decompilation (bytecode differs between pools of the same template *only* in embedded immutable constructor values — same length, different hash, confirmed).

| Chain | Pool address | Template | Pair | Value (USD, approx.) | Folder |
|---|---|---|---|---:|---|
| ethereum | `0x948462ce2b2eae59c65d9f2f94b3d8de4fbd4396` | legacy(A) | sUSDe/USDe | **$510,468** | [pools/ethereum-948462ce](pools/ethereum-948462ce) |
| bsc | `0xed1029bbaea4a2903993b43f24f52a36eca717b8` | legacy(A) | QQQB/USDT | $463,716 | [pools/bsc-ed1029bb](pools/bsc-ed1029bb) |
| robinhood | `0x328b09f80379432d92dbd8ba91999e83b70da706` | v1(B) | WETH/USDG | $348,068 | [pools/robinhood-328b09f8](pools/robinhood-328b09f8) |
| base | `0x11d5a5e1633c3a99fd023b8fd2d3486773c50993` | legacy(A) | WETH/USDC | $332,507 | [pools/base-11d5a5e1](pools/base-11d5a5e1) |
| polygon | `0xc365ef377bdd942b487e9cb2db97a2617b0856e4` | legacy(A) | USDC/USDC | $332,052 | [pools/polygon-c365ef37](pools/polygon-c365ef37) |
| hyperevm | `0x1c8ee7e99e2aecd1338e111716e4744e7d088098` | legacy(A) | WHYPE/USDC | $277,780 | [pools/hyperevm-1c8ee7e9](pools/hyperevm-1c8ee7e9) |
| ethereum | `0x7718360ead37485836e7fa69deae10058813baf1` | legacy(A) | USDT/USDC | $262,664 | [pools/ethereum-7718360e](pools/ethereum-7718360e) |
| ethereum | `0x9195196785b07bf781f4f48eeb60a1891ba9b4bc` | legacy(A) | WETH/USDC | $231,698 | [pools/ethereum-91951967](pools/ethereum-91951967) |
| arbitrum | `0x6ae2d3d4042d352334817cae7cea0607071c20c1` | legacy(A) | WETH/USDC | $151,356 | [pools/arbitrum-6ae2d3d4](pools/arbitrum-6ae2d3d4) |
| arbitrum | `0x5107e9799e01a104903cca1b1e070c433795a4b3` | legacy(A) | USDC/USDT0 | $139,787 | [pools/arbitrum-5107e979](pools/arbitrum-5107e979) |
| avax | `0xee0c449475cfadd2a69e662617a993405b6ffc07` | legacy(A) | WAVAX/USDC | $136,928 | [pools/avax-ee0c4494](pools/avax-ee0c4494) |
| base | `0x60b0c053a9981b9096c8522975b7a2184fc18b91` | legacy(A) | cbBTC/USDC | $129,720 | [pools/base-60b0c053](pools/base-60b0c053) |
| hyperevm | `0xc6e61666e362b45e8ba9d4cb3c70e084798ae57c` | legacy(A) | WHYPE/USDC | $106,146 | [pools/hyperevm-c6e61666](pools/hyperevm-c6e61666) |
| monad | `0xfa32f9ec28787d1f9c5ba5c39e54e59984fef3f0` | legacy(A) | WMON/USDC | $104,239 | [pools/monad-fa32f9ec](pools/monad-fa32f9ec) |
| ethereum | `0xbd943376a6f84bd817b190ab7ee422b7cc70b4c4` | legacy(A) | USDe/USDT | $102,520 | [pools/ethereum-bd943376](pools/ethereum-bd943376) |
| ethereum | `0x9ed0780e697d7bb92360a45951f3481dd06d6d20` | legacy(A) | USDe/USDC | $100,197 | [pools/ethereum-9ed0780e](pools/ethereum-9ed0780e) |
| base | `0x41740eda7ec96cbb1555fa054d7161c4db699142` | legacy(A) | WETH/cbBTC | $100,119 | [pools/base-41740eda](pools/base-41740eda) |
| monad | `0x354d92279ca0190ff275095fe6a2a6989baa66fb` | legacy(A) | WETH/USDC | $74,453 | [pools/monad-354d9227](pools/monad-354d9227) |
| monad | `0x2d82ac42334b394a9a8d8f097d61dc1c6b065fd8` | legacy(A) | WBTC/USDC | $68,914 | [pools/monad-2d82ac42](pools/monad-2d82ac42) |
| bsc | `0x3745f03a957db146d79dfb24a884cdb9a630cf3e` | legacy(A) | SPCXB/USDT | $66,603 | [pools/bsc-3745f03a](pools/bsc-3745f03a) |
| arbitrum | `0xe90e28e564adc6e526b762af04bf47b8fcb8c2a5` | legacy(A) | cbBTC/USDC | $63,567 | [pools/arbitrum-e90e28e5](pools/arbitrum-e90e28e5) |
| arbitrum | `0xa6cb1c1a226622c4ef5a151106bc2ebe25cfbd32` | legacy(A) | USDC/USDT0 | $59,433 | [pools/arbitrum-a6cb1c1a](pools/arbitrum-a6cb1c1a) |
| avax | `0x68d2fd65fe9529bfa59b3e325ee98329800051bd` | legacy(A) | WETH/USDC | $56,139 | [pools/avax-68d2fd65](pools/avax-68d2fd65) |
| base | `0x04156abef47aa724f589aa7476ddcf24a058e23d` | legacy(A) | VVV/USDC | $49,541 | [pools/base-04156abe](pools/base-04156abe) |
| avax | `0x450714f411cfa00fa22cfd9f9de59a588b1e2711` | legacy(A) | btc.b/USDC | $47,176 | [pools/avax-450714f4](pools/avax-450714f4) |
| bsc | `0x2308db6733c9652704b6b9bb9720788706aabd0a` | legacy(A) | WBNB/USDT | $43,011 | [pools/bsc-2308db67](pools/bsc-2308db67) |
| polygon | `0x65b670c5cd5d7abb229be2e6ac03f4666864342d` | legacy(A) | WETH/USDC | $41,033 | [pools/polygon-65b670c5](pools/polygon-65b670c5) |
| megaeth | `0x02adbc11c0cb9a193abc806f08a29aa895808a77` | legacy(A) | USDT0/MEGA | $38,886 | [pools/megaeth-02adbc11](pools/megaeth-02adbc11) |
| bsc | `0xebeff7ececf4f8334ac6c629d16f6516f689a58e` | legacy(A) | SPYB/USDT | $36,690 | [pools/bsc-ebeff7ec](pools/bsc-ebeff7ec) |
| hyperevm | `0x0a2b998b714a1b7bc2018019e5418e47f042b885` | legacy(A) | UBTC/USDC | $36,626 | [pools/hyperevm-0a2b998b](pools/hyperevm-0a2b998b) |
| base | `0x2f5031e9f73632bfb3f05de565f7db06a2f5ba95` | legacy(A) | EURC/USDC | $34,899 | [pools/base-2f5031e9](pools/base-2f5031e9) |
| bsc | `0xc6448de0b0ae196e5602e349b8a1a1a7a7c10af7` | legacy(A) | NVDAB/USDT | $33,568 | [pools/bsc-c6448de0](pools/bsc-c6448de0) |
| bsc | `0x8404415abea8f65ba2dcf44ee91beadba2887c35` | legacy(A) | WBNB/USDT | $27,915 | [pools/bsc-8404415a](pools/bsc-8404415a) |
| base | `0x18affb4cc2dd922137056d35c60ad5d0b0b1325f` | legacy(A) | AERO/USDC | $27,550 | [pools/base-18affb4c](pools/base-18affb4c) |
| base | `0x501568a7c6d9257ded9506008de044565c68fd60` | **v1(B)** | WETH/USDC | $26,585 | [pools/base-501568a7](pools/base-501568a7) |
| base | `0xf5605febf4720ec0b303225188e45c2e195e1787` | **v1(B)** | VIRTUAL/USDC | $25,853 | [pools/base-f5605feb](pools/base-f5605feb) |
| base | `0x6d73ade0cd5ee7d826dccfc700d26aad3cbd957f` | **v1(B)** | cbBTC/USDC | $22,129 | [pools/base-6d73ade0](pools/base-6d73ade0) |
| megaeth | `0x8c554f1050d6d7e617aa8a0fc4d03b6ac02db770` | legacy(A) | WETH/USDT0 | $20,710 | [pools/megaeth-8c554f10](pools/megaeth-8c554f10) |
| ethereum | `0xc94896ae5abbcd3d820e50ce97b049879fe53c8d` | legacy(A) | PYUSD/USDC | $17,901 | [pools/ethereum-c94896ae](pools/ethereum-c94896ae) |
| base | `0x88a643cb46c61d402bc99f43698004e72da42efc` | legacy(A) | EURC/USDC | $17,257 | [pools/base-88a643cb](pools/base-88a643cb) |
| base | `0x82f3ecf681effd1be03388d1ae36ec0b784853c6` | **v1(B)** | AERO/USDC | $17,158 | [pools/base-82f3ecf6](pools/base-82f3ecf6) |
| hyperevm | `0x7a2ac5de895db2f6bf7af93bacdaeb0185d961b3` | legacy(A) | KNTQ/USDC | $14,353 | [pools/hyperevm-7a2ac5de](pools/hyperevm-7a2ac5de) |
| base | `0x687e3a99b97ab76d70a85f0ec38ff15a15d71860` | legacy(A) | WETH/USDC | $12,565 | [pools/base-687e3a99](pools/base-687e3a99) |
| bsc | `0xd4d432ca80dc673d6c3ce49d120092496cf4d301` | legacy(A) | NVDAon/USDT | $12,254 | [pools/bsc-d4d432ca](pools/bsc-d4d432ca) |

**Role/classification for every pool above:** `pool / vault` — user-callable (swap, add/remove liquidity) + admin-callable (fee/oracle/pause config, scoped to that single pool only). See §6 for the exact function surface.

**Dependencies / external calls (every pool):** its own `token0`/`token1` ERC-20 contracts (`transfer`/`balanceOf`/`transferFrom` — standard external tokens, not part of Metric, not inventoried here), its own `priceProvider` contract (external call for pricing, read-only — see §5), and (v1(B) pools only) an `admin` address and `adminFeeDestination` address set at pool creation.

---

## 4. Callable-surface classification (from decompilation, §6 has full detail)

| Selector | Name (resolved) | Contract | Caller | Effect |
|---|---|---|---|---|
| `0x9362624a` etc. (unresolved) | `createPool(...)` family | both factories | anyone (permissionless) | Deploys a new pool contract, registers it, and (Factory B only) lets caller set itself as `admin`/`adminFeeDestination` |
| `0x237f4b66` | `collectTokens(address,address,uint256)` | both factories | `owner()` only | Sweeps ERC-20 balance held by the **factory** to an arbitrary address |
| `0x715018a6` / `0x79ba5097` / `0xf2fde38b` | `renounceOwnership` / `acceptOwnership` / `transferOwnership` | both factories | `owner()`/`pendingOwner()` | Standard Ownable2Step |
| `0x55aca1ec` / `0xf21c38cd` | `pausePool(address)` / `unpausePool(address)` | Factory B only | `owner()` only | Global admin can pause any Factory-B pool |
| `0xac8bb7d9` (legacy) / `0x5cced60b`,`0xe24f0884` (v1) | `swap(...)`-family | every pool | anyone | AMM swap; user-callable |
| `0xcedbbe1a` (legacy) / `0x97962ef9`,`0xfbde1732` (v1) | mint/add-liquidity-family | every pool | anyone | Provide liquidity; user-callable |
| `0xa1af5b9a` | `collectProtocolFees()` | every pool | unclear from decompile alone (likely permissionless "poke", pays out to stored fee destination) — **flagged, not confirmed** | Pays accrued protocol fee out |
| `0x372aa224` | `setPriceProvider(address)` | every pool | pool's own `admin` (v1) / unclear gate (legacy) | Changes the pool's price-oracle dependency |
| `0x16c77efe`/`0x7feedaa1` (legacy) / `0x5dd9a4c5` (v1) | `setAdminFee`/`setProtocolFee`/`setPoolFees` | every pool | admin-gated | Changes fee parameters |
| `0x3ff20c8a` | `setPause(uint8)` | v1 pools only | pool's own `admin` | Pool-level pause switch |
| `0xdfeeb560` (legacy) / equivalent in v1 | `setAdminFeeDestination(address)` | every pool | pool's own `admin` | Redirects where admin fees are paid |
| `0xbcdb4dad` | `getImmutables()` | every pool | anyone (view) | Returns the baked-in token0/token1/factory/etc. |

---

## 5. Dropped contracts (and exact reason)

| Category | Count | Reason dropped |
|---|---:|---|
| Pools discovered on-chain but < $10,000 | 274 of 318 | Fails the $10k inclusion threshold. Full list with computed balances/values is in [`pools/_shared/all_318_pools_discovered.csv`](pools/_shared/all_318_pools_discovered.csv) for transparency/audit of this decision. |
| `priceProvider` contracts referenced by the 44 included pools | 42 distinct addresses (across 8 chains) | Every one was individually checked via `balanceOf(pool's token0)` and `balanceOf(pool's token1)` and **holds $0 of either token** (see [`research-notes/special_addresses_checked.json`](research-notes/special_addresses_checked.json) for contract/EOA status and [`research-notes/special_addresses.json`](research-notes/special_addresses.json) for the full address list). They are read-only oracle dependencies (role: `oracle/registry`), not fund custodians, so they do not meet "holds or controls ≥ $10k." Not inventoried as separate contracts; their addresses are recorded in each relevant pool's `metadata.json`. |
| `admin` / `adminFeeDestination` EOAs (v1(B) pools) | 3 distinct EOAs (`0x05af07e7…`, `0xde0ae901…`, `0xd7da1036…`) | Not contracts (no bytecode) — nothing to decompile or verify. **Not dropped from consideration**: they genuinely control ≥$10k of pool funds (pause/fee/oracle authority + fee receipt) and are named explicitly in §3.2/§7 as the controlling party for their pools, just without a subfolder since there is no code. One of them, `0xae58d399432abb59bc45de8c04a0d60cdd575e0c` (admin of the `base-f5605feb` pool, $25,853), is an EIP-7702-delegated EOA — its code is `0xef0100` + `0x63c0c19a282a1b52b07dd5a65b58948a07dae32b`, which is MetaMask's verified, open-source `EIP7702StatelessDeleGator` smart-account implementation (generic shared infra, not Metric-specific code) — noted here rather than given its own subfolder. |
| `extensions[]` hook contracts referenced by v1(B) pools (`PoolCreated.extensions`) | 3 distinct addresses not already covered as a `priceProvider` (`0x2229c488…` on `base-f5605feb`, `0x7d5d12aa…` and `0x225c402b…` on `base-82f3ecf6`; the robinhood pool's one extension is its own already-checked `priceProvider`) | All three are contracts (4,030 / 15,879 / 4,807 bytes) but hold **$0** of the pool's token0, token1, and native ETH — checked the same way as priceProviders. Likely hook/extension logic (fee routing, MEV protection, etc.), not fund custody. Addresses recorded in each pool's `metadata.json` `extensions` field. |
| HyperEVM `factory-A` fee balance | 1 (the factory itself, already inventoried) | ≈$8,254 held directly by `factory-A` on HyperEVM is *under* $10k on its own; not dropped as a contract (factory-A is included regardless, as the admin/registry contract), just noted as not separately crossing the threshold via direct holdings. |
| 1 pool with an unpriced token | `hyperevm-4a857834` (token `0x0e894d40…` has no DefiLlama price feed) | Its on-chain balance is 0 for **both** token0 and token1 (confirmed via `balanceOf`), so it is <$10k regardless of the missing price — correctly excluded on balance grounds alone. |
| Duplicate proxy/implementation pairs | 0 | No proxies exist anywhere in this protocol (see §2 and §8) — nothing to de-duplicate on this basis. |

---

## 6. DECOMPILATION STATUS

**Every contract in this inventory is unverified on every chain.** Checked via: Etherscan V2 `contract.getsourcecode` (Ethereum, Arbitrum, Polygon, MegaETH, HyperEVM, Monad, BSC, Avalanche), Blockscout `contract.getsourcecode` (Base, Robinhood Chain), and Sourcify v2 lookup-by-address (Ethereum). All returned "not verified" / no match. **No hand-written pseudocode is presented anywhere in this repo** — every `decompiled.sol`/`abi.json` file was produced by running the open-source [heimdall-rs](https://heimdall.rs) v0.9.2 decompiler (`heimdall decompile <bytecode> --include-sol`) directly against on-chain runtime bytecode fetched via `eth_getCode`, supplemented by [`evmole`](https://github.com/cdump/evmole) (function-selector/argument/state-mutability extraction) and public-signature lookups against [4byte.directory](https://www.4byte.directory) to resolve human-readable names where a match exists.

| Contract | Verified anywhere? | Decompiler | Output location | Confidence notes |
|---|---|---|---|---|
| Factory A (all 10 chains — identical bytecode) | No | heimdall-rs v0.9.2 + evmole | [`factory-A/decompiled.sol`](factory-A/decompiled.sol), [`factory-A/abi_heimdall.json`](factory-A/abi_heimdall.json), [`factory-A/functions_resolved.json`](factory-A/functions_resolved.json) | 13/13 function selectors extracted; 9/13 resolved to a named signature via 4byte; core logic (Ownable2Step + `collectTokens` sweep) is clear from the decompile |
| Factory B (all 5 chains — identical bytecode) | No | heimdall-rs v0.9.2 + evmole | [`factory-B/decompiled.sol`](factory-B/decompiled.sol), [`factory-B/abi_heimdall.json`](factory-B/abi_heimdall.json), [`factory-B/functions_resolved.json`](factory-B/functions_resolved.json) | 47/47 selectors extracted; ~10/47 resolved by name (`owner`, `collectTokens`, `pausePool`, `unpausePool`, `poolDeployer`, `nextPoolIdx`, `isPool`, Ownable2Step); remaining 37 are pool-fee/extension configuration setters visible in the decompiled control flow but without a confirmed public name |
| `legacy(A)` pool template (39 of the 44 pools) | No | heimdall-rs v0.9.2 + evmole, run against representative pool `ethereum-948462ce` | [`pools/_shared/legacyA-template/decompiled.sol`](pools/_shared/legacyA-template/decompiled.sol) | 12/12 selectors extracted; swap/mint functions largely `Unresolved_*` (no public 4byte match) but argument types and view/payable/nonpayable state are extracted with high confidence; `getImmutables()`, `extsload()`, `setPriceProvider`, `collectProtocolFees`, `setAdminFee`/`setProtocolFee` resolved by name |
| `v1(B)` pool template (5 of the 44 pools) | No | heimdall-rs v0.9.2 + evmole, run against representative pool `robinhood-328b09f8` | [`pools/_shared/v1B-template/decompiled.sol`](pools/_shared/v1B-template/decompiled.sol) | 15/15 selectors extracted; `setPriceProvider`, `setPause`, `setPoolFees`, `getImmutables`, `inSwap` resolved by name; swap/mint-family selectors remain `Unresolved_*` |

Every one of the other 42 pools that share a template only got its **own bytecode + metadata** captured (not its own full heimdall run) — confirmed byte-length-identical to its template and differing only in embedded immutable values (different sha256, same length). Re-running heimdall on each individually would reproduce the same control-flow logic; this was treated as redundant given time/compute budget (see COULD-NOT-ENUMERATE).

---

## 7. Discovery methodology (how every contract was found)

1. **DefiLlama protocol/TVL data** — `https://api.llama.fi/protocol/metric` and `https://api.llama.fi/protocols` gave the parent/child protocol structure (`metric-v2` tracked, `metric-v1` untracked/`dummy.js`), the 9 dashboard chains, and confirmed the protocol has **no on-chain TVL module hardcoding pool addresses** (it calls the team's own backend API dynamically) — meaning DefiLlama's TVL side could not be used directly to enumerate contracts.
2. **DefiLlama-adapters / dimension-adapters GitHub repos** (`DefiLlama/DefiLlama-Adapters` and `DefiLlama/dimension-adapters`) — the *volume* (dexs) adapters at `dexs/metric/index.ts` and `dexs/metric-v1/index.ts` hardcode the two factory addresses and their `PoolCreated` event ABIs and per-chain deployment start-blocks. This is what actually seeded the enumeration.
3. **On-chain `eth_getCode`** — used to confirm/deny factory deployment on every chain in DefiLlama's registry (catching the undocumented Robinhood-Factory-A and HyperEVM-Factory-B deployments that neither adapter file listed for that specific factory/chain combination) and to sweep 25 additional Etherscan-V2-indexed EVM chains for any further undocumented deployment (none found).
4. **`eth_getLogs` for `PoolCreated`** — computed the correct event-topic0 locally via keccak256 of the exact event signature from the adapter source (not guessed), then scanned from each chain's factory-deployment block to latest, using whichever of Etherscan V2 / Blockscout / Routescan / direct chunked RPC calls actually worked for that chain (BSC required manually chunking ~6,500 requests of 5,000 blocks each through `bsc.rpc.blxrbdn.com`, since neither Etherscan-V2's free tier nor Blockscout support BSC log queries; Avalanche used Routescan's free API since Etherscan-V2's free tier blocks Avalanche log queries).
5. **Balance measurement** — for every discovered pool, `balanceOf(pool)` was called on-chain for both `token0` and `token1` (taken directly from the decoded event, not guessed), then priced via DefiLlama's `coins.llama.fi/prices/current` endpoint, to compute USD value and apply the $10k cut.
6. **EIP-1967 storage reads** (`eth_getStorageAt` on the implementation/admin/beacon slots) — run against both factories and a representative pool to confirm none of them are proxies.
7. **Verification checks** — `contract.getsourcecode` on Etherscan V2 (8 chains) / Blockscout (2 chains), plus a Sourcify v2 lookup, on both factories and all 44 included pools.
8. **Decompilation** — heimdall-rs (installed from source in this session; not preinstalled) + evmole + 4byte.directory, run against on-chain runtime bytecode fetched via `eth_getCode` (never against hand-typed guesses).

---

## 8. Proxy resolution

No proxy relationships exist in this inventory. Checked explicitly via `eth_getStorageAt` for the EIP-1967 implementation slot (`0x360894…82bbc`), admin slot (`0xb53127…5d6103`), and beacon slot (`0xa3f0ad…5133d5`) on both factory contracts and one representative pool of each template on Ethereum — **all three slots read as all-zero on every contract checked**, and this is corroborated by the decompiled bytecode itself, which shows a plain storage-variable `owner` pattern (`SSTORE`/`SLOAD` against a fixed slot) rather than a `DELEGATECALL` dispatch loop. Accordingly, there is **nothing to report under "any proxy whose implementation changed recently."**

---

## 9. COULD-NOT-ENUMERATE (places this search may be incomplete)

- **Team backend / DefiLlama's own live pool-list API was unreachable.** DefiLlama's TVL adapter (`projects/metric/index.js`) fetches pool metadata from the protocol's own backend (`http://54.199.103.16:8080/<chain>/metadata`, with `https://api.metric.xyz` as a now-dead/repurposed fallback that returns 404 on that path and serves an unrelated `oracle_api` at its root). The raw-IP endpoint timed out from this environment on every attempt. This means we could **not cross-check our from-scratch on-chain enumeration against the protocol's own canonical pool list** — our pool set is independently derived purely from `PoolCreated` events, which should be complete for anything created through the factory's normal path, but we have no second source to catch, e.g., pools deployed by some other mechanism entirely.
- **No public GitHub repository or accessible docs site found for Metric.** `docs.metric.xyz` returned HTTP 401 (login-gated); no `metric.xyz`/`Metricxyz`-affiliated GitHub org or repo turned up in web search. We could not cross-reference an official "deployments" list, audit report, or contract-address changelog — everything here is derived independently from on-chain data and DefiLlama's third-party adapter code.
- **BSC log completeness cannot be independently verified.** BSC required chunking `eth_getLogs` into ~6,500 sequential 5,000-block requests against a single free public RPC (all other free BSC log-query options we tried were rate-limited, key-gated, or unsupported). We have no second working BSC log source to cross-check against, so a transient gap in that one RPC's response for any single chunk could have silently dropped a pool. (39 pools were found, consistent in relative magnitude with BSC's ~$707k DefiLlama-reported chain TVL, which is a soft sanity check but not a guarantee.)
- **`priceProvider`/`admin`/`adminFeeDestination` addresses were only checked for the 44 pools that already cleared the $10k bar.** The same three address fields exist on all 274 sub-threshold pools too (hundreds more distinct addresses) — none of those were balance-checked. If any of those addresses independently holds ≥$10k of *unrelated* funds it "controls" via some other role, that would not be caught here; we scoped the special-address sweep to addresses tied to already-included pools only.
- **`owner()`/`pendingOwner()` of both factories was not read on-chain in this pass** (the decompiled ABI confirms the getters exist, `0x8da5cb5b`/`0xe30c3978`, but we did not call them) — so the exact current controlling address for the factory-level `collectTokens`/`pausePool` authority is not named in this report, only its existence and selector.
- **One HyperEVM token has no price feed** (`0x0e894d40842441fb45cd6b8ca0bc1561f3469076`, paired in pool `hyperevm-4a857834`) — irrelevant to the $10k decision here since that pool's balance is $0/$0, but flagged in case that pool is funded in the future.
- **The 25-chain "no further deployment" sweep (§1) used Etherscan V2's proxy `eth_getCode` only**, and 2 of the ~34 total chains checked (OP Mainnet, Celo) hit rate-limit/plan errors on the *first* pass and were re-verified individually via each chain's own public RPC (both came back empty) — but the sweep did not cover the full universe of EVM chains that exist (only the ~34 Etherscan-V2 indexes), so a deployment on some other, less-common EVM chain is not ruled out.
- **Decompiled bytecode is not a substitute for source.** Every `Unresolved_0xXXXXXXXX` function name in the decompiled output (roughly half of all selectors across both pool templates) has its argument types and view/payable/nonpayable status extracted mechanically, but its exact semantics are inferred from heimdall's control-flow reconstruction, not confirmed against a human-readable source file — treat those as best-effort, not ground truth.

---

## 10. Repository layout

```
metric/
├── README.md                        (this file)
├── factory-A/                       Factory A — all 10 chain deployments (same address/bytecode)
│   ├── metadata.json                per-chain balances, verification status, discovery method
│   ├── runtime_bytecode.hex
│   ├── decompiled.sol               heimdall-rs output
│   ├── abi_heimdall.json
│   └── functions_resolved.json      evmole selectors + 4byte.directory name matches
├── factory-B/                       Factory B — all 5 chain deployments (same address/bytecode)
│   └── (same file set as factory-A/)
├── pools/
│   ├── _shared/
│   │   ├── legacyA-template/        one shared decompilation for all 39 legacy(A) pools
│   │   ├── v1B-template/            one shared decompilation for all 5 v1(B) pools
│   │   └── all_318_pools_discovered.csv   full on-chain enumeration incl. the 274 dropped pools
│   └── <chain>-<address-prefix>/    one folder per included pool (44 total)
│       ├── metadata.json            token pair, balances/USD value, admin/oracle addresses, creation tx, discovery method
│       └── runtime_bytecode.hex     this specific pool's own bytecode
└── research-notes/                  raw evidence backing §5/§9 claims (verification checks, special-address
                                      balance checks, factory balances, chain sweep results, event-topic hashes)
```
