// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/// @title            Decompiled Contract
/// @author           Jonathan Becker <jonathan@jbecker.dev>
/// @custom:version   heimdall-rs v0.9.2
///
/// @notice           This contract was decompiled using the heimdall-rs decompiler.
///                     It was generated directly by tracing the EVM opcodes from this contract.
///                     As a result, it may not compile or even be valid solidity code.
///                     Despite this, it should be obvious what each function does. Overall
///                     logic should have been preserved throughout decompiling.
///
/// @custom:github    You can find the open-source decompiler here:
///                       https://heimdall.rs

contract DecompiledContract {
    mapping(bytes32 => bytes32) storage_map_e;
    bool public getImmutables;
    bytes32 store_c;
    uint24 store_b;
    address store_h;
    bytes32 store_g;
    bytes32 store_f;
    uint24 store_d;
    
    event ProtocolFeeUpdated(uint24);
    event PriceProviderUpdated(address);
    error CustomError_00000000();
    event Event_c08bb137();
    event Event_03e94ab5();
    
    /// @custom:selector    0x43e280d4
    /// @custom:signature   Unresolved_43e280d4(uint256 arg0, uint256 arg1, address arg2, address arg3, address arg4) public pure returns (bytes memory)
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    /// @param              arg2 ["address", "uint128", "bytes16", "int128"]
    /// @param              arg3 ["address", "uint128", "bytes16", "int128"]
    /// @param              arg4 ["address", "uint128", "bytes16", "int128"]
    function Unresolved_43e280d4(uint256 arg0, uint256 arg1, address arg2, address arg3, address arg4) public pure returns (bytes memory) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0xa0);
        require(arg0 - arg0);
        require(arg1 - 11);
        require(arg2 - (address(arg2)));
        require(arg3 - (address(arg3)));
        require(arg4 - (address(arg4)));
        require(!11, CustomError_d6e666c0());
        require(address(arg3) > (address(arg4)), CustomError_d6e666c0());
        if (!address(arg3)) {
            require(!(address(arg3)), CustomError_6dfcc650());
            require(!(address(arg3) * (address(arg4)) / (address(arg3)) == (address(arg4)) | (!address(arg3))), CustomError_6dfcc650());
            require(!(address(arg3) * (address(arg4)) > 0x01), CustomError_6dfcc650());
            require(!(address(arg3) * (address(arg4)) < 0x0100000000000000000000000000000000), CustomError_6dfcc650());
            require(!((address(arg3) * (address(arg4)) >> 0x80) < 0x010000000000000000), CustomError_6dfcc650());
            require(!(((address(arg3) * (address(arg4)) >> 0x80) >> 0x40) < 0x0100000000), CustomError_6dfcc650());
            require(!((((address(arg3) * (address(arg4)) >> 0x80) >> 0x40) >> 0x20) < 0x010000), CustomError_6dfcc650());
            require(!(((((address(arg3) * (address(arg4)) >> 0x80) >> 0x40) >> 0x20) >> 0x10) < 0x0100), CustomError_6dfcc650());
            require(!((((((address(arg3) * (address(arg4)) >> 0x80) >> 0x40) >> 0x20) >> 0x10) >> 0x08) < 0x10), CustomError_6dfcc650());
            require(!(((((((address(arg3) * (address(arg4)) >> 0x80) >> 0x40) >> 0x20) >> 0x10) >> 0x08) >> 0x04) < 0x04), CustomError_6dfcc650());
            require(!0xc0000000000000000000000000000000, CustomError_6dfcc650());
        }
        require(address(arg3) * (address(arg4)) > 0xffffffffffffffffffffffffffffffff, CustomError_6dfcc650());
        require(((address(arg4) * 0xe8d4a51000) % 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) - (address(arg4) * 0xe8d4a51000) == (((address(arg4) * 0xe8d4a51000) % 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) < (address(arg4) * 0xe8d4a51000)), CustomError_6b95e45f());
        require(!(address(arg3) > (((address(arg4) * 0xe8d4a51000) % 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) - (address(arg4) * 0xe8d4a51000) - (((address(arg4) * 0xe8d4a51000) % 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) < (address(arg4) * 0xe8d4a51000)))), CustomError_6b95e45f());
        return abi.encodePacked(11, 11);
    }
    
    /// @custom:selector    0xa1af5b9a
    /// @custom:signature   collectProtocolFees() public payable
    function collectProtocolFees() public payable {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0);
        var_a = var_a;
        require(transient[var_a], CustomError_3ee5aeb5());
        var_a = var_a;
        transient[var_a] = 0x01;
        require(!uint24(store_b >> 0xb8));
        address var_c = address(this);
        require(((var_e + 0x60) > 0xffffffffffffffff) | ((var_e + 0x60) < var_e));
        uint256 var_e = var_e + 0x60;
        (bool success, bytes memory ret0) = address(0x9d39a5de30e57443bff2a8307a4256c8797a3497).Unresolved_70a08231(var_c); // staticcall
        require(!ret0.length);
        require(var_g < 0x20);
        require(((0x60 + var_g) - 0x60) < 0x20);
        address var_i = address(this);
        require(((var_e + 0x60) > 0xffffffffffffffff) | ((var_e + 0x60) < var_e));
        (bool success, bytes memory ret0) = address(0x4c9edd5852cd905f086c759e8383e09bff1e68b3).Unresolved_70a08231(var_i); // staticcall
        require(!ret0.length);
        require(var_g < 0x20);
        require(((0x60 + var_g) - 0x60) < 0x20);
        require(!0x01);
        require(ret0.length > 0xffffffffffffffff);
        var_a = var_a;
        transient[var_a] = 0;
    }
    
    /// @custom:selector    0x1e2eaeaf
    /// @custom:signature   extsload(bytes32 arg0) public view returns (uint256)
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    function extsload(bytes32 arg0) public view returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        return store_c;
    }
    
    /// @custom:selector    0x16c77efe
    /// @custom:signature   setAdminFee(uint24 arg0) public payable
    /// @param              arg0 ["uint24", "bytes3", "int24"]
    function setAdminFee(uint24 arg0) public payable {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (uint24(arg0)));
        require(msg.sender - (address(store_d)), CustomError_47556579());
        var_a = var_a;
        require(transient[var_a], CustomError_3ee5aeb5());
        var_a = var_a;
        transient[var_a] = 0x01;
        require(!uint24(store_b >> 0xb8));
        address var_c = address(this);
        require(((var_e + 0x60) > 0xffffffffffffffff) | ((var_e + 0x60) < var_e));
        uint256 var_e = var_e + 0x60;
        (bool success, bytes memory ret0) = address(0x9d39a5de30e57443bff2a8307a4256c8797a3497).Unresolved_70a08231(var_c); // staticcall
        require(!ret0.length);
        require(var_g < 0x20);
        require(((0x60 + var_g) - 0x60) < 0x20);
        address var_i = address(this);
        require(((var_e + 0x60) > 0xffffffffffffffff) | ((var_e + 0x60) < var_e));
        (bool success, bytes memory ret0) = address(0x4c9edd5852cd905f086c759e8383e09bff1e68b3).Unresolved_70a08231(var_i); // staticcall
        require(!ret0.length);
        require(var_g < 0x20);
        require(((0x60 + var_g) - 0x60) < 0x20);
        require(!0x01);
        require(ret0.length > 0xffffffffffffffff);
        require(uint24(arg0) > 0x030d40, CustomError_4dd762d9());
        store_b = (uint232(store_b)) | (uint24(((store_d >> 0xa0) + arg0) << 0xb8));
        store_d = (uint232(store_d)) | (uint24(arg0 << 0xb8));
        emit Event_c08bb137(uint24(arg0));
        var_a = var_a;
        transient[var_a] = 0;
    }
    
    /// @custom:selector    0x7feedaa1
    /// @custom:signature   setProtocolFee(uint24 arg0) public payable
    /// @param              arg0 ["uint24", "bytes3", "int24"]
    function setProtocolFee(uint24 arg0) public payable {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (uint24(arg0)));
        require(msg.sender - 0xe22f9fc0f04486de25ed6cf1800a4a47afd82e0c, CustomError_3ee5aeb5());
        var_a = var_a;
        require(transient[var_a], CustomError_3ee5aeb5());
        var_a = var_a;
        transient[var_a] = 0x01;
        require(!uint24(store_b >> 0xb8));
        address var_c = address(this);
        require(((var_e + 0x60) > 0xffffffffffffffff) | ((var_e + 0x60) < var_e));
        uint256 var_e = var_e + 0x60;
        (bool success, bytes memory ret0) = address(0x9d39a5de30e57443bff2a8307a4256c8797a3497).Unresolved_70a08231(var_c); // staticcall
        require(!ret0.length);
        require(var_g < 0x20);
        require(((0x60 + var_g) - 0x60) < 0x20);
        address var_i = address(this);
        require(((var_e + 0x60) > 0xffffffffffffffff) | ((var_e + 0x60) < var_e));
        (bool success, bytes memory ret0) = address(0x4c9edd5852cd905f086c759e8383e09bff1e68b3).Unresolved_70a08231(var_i); // staticcall
        require(!ret0.length);
        require(var_g < 0x20);
        require(((0x60 + var_g) - 0x60) < 0x20);
        require(!0x01);
        require(ret0.length > 0xffffffffffffffff);
        require(uint24(arg0) > 0x030d40, CustomError_4dd762d9());
        store_b = (uint24((arg0 + (store_d >> 0xb8)) << 0xb8)) | (uint232(store_b));
        store_d = (uint24(arg0 << 0xa0)) | (uint232(store_d));
        emit ProtocolFeeUpdated(uint24(arg0));
        var_a = var_a;
        transient[var_a] = 0;
    }
    
    /// @custom:selector    0xac8bb7d9
    /// @custom:signature   Unresolved_ac8bb7d9(address arg0, uint256 arg1, uint256 arg2, address arg3, uint256 arg4) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    /// @param              arg2 ["uint256", "bytes32", "int256"]
    /// @param              arg3 ["address", "uint128", "bytes16", "int128"]
    /// @param              arg4 ["uint256", "bytes32", "int256"]
    function Unresolved_ac8bb7d9(address arg0, uint256 arg1, uint256 arg2, address arg3, uint256 arg4) public payable {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0xa0);
        require(arg0 - (address(arg0)));
        require(arg1 - arg1);
        require(arg2 - 11);
        require(arg3 - (address(arg3)));
        require(arg4 > 0xffffffffffffffff);
        require(!(arg4 + 0x23) < msg.data.length);
        require(arg4 > 0xffffffffffffffff);
        require(((arg4 + (arg4)) + 0x24) > msg.data.length, CustomError_3ee5aeb5());
        var_a = var_a;
        require(transient[var_a], CustomError_3ee5aeb5());
        var_a = var_a;
        transient[var_a] = 0x01;
        require(!11, CustomError_90bfb865());
        (bool success, bytes memory ret0) = address(getImmutables).getBidAndAskPrice(); // staticcall
        require(!ret0.length, CustomError_90bfb865());
        require(ret0.length > 0xffffffffffffffff, CustomError_90bfb865());
        require(((var_j + (uint248((0x20 + (ret0.length + 0x1f)) + 0x1f))) > 0xffffffffffffffff) | ((var_j + (uint248((0x20 + (ret0.length + 0x1f)) + 0x1f))) < var_j), CustomError_90bfb865());
        uint256 var_j = var_j + (uint248((0x20 + (ret0.length + 0x1f)) + 0x1f));
        require(0 > 0, CustomError_d6e666c0());
        if (!0) {
            if (!(0 == 0) | !0) {
                if (!0 > 0x01) {
                    if (!0 < 0x0100000000000000000000000000000000) {
                        if (!0 < 0x010000000000000000) {
                            if (!0 < 0x0100000000) {
                                if (!0 < 0x010000) {
                                    if (!0 < 0x0100) {
                                        if (!0 < 0x10) {
                                            if (!0 < 0x04) {
                                                if (!0xc0000000000000000000000000000000) {
                                                    if (!0 < 0x04) {
                                                    }
                                                }
                                                if (!0 < 0x10) {
                                                    if (!0 < 0x04) {
                                                    }
                                                    if (!0 < 0x04) {
                                                    }
                                                    if (!0 < 0x0100) {
                                                        require(!0, CustomError_6dfcc650());
                                                    }
                                                    require(!((0 == 0) | !0), CustomError_6dfcc650());
                                                }
                                            }
                                        }
                                        require(!(0 > 0x01), CustomError_6dfcc650());
                                        require(!(0 < 0x0100000000000000000000000000000000), CustomError_6dfcc650());
                                    }
                                    require(!(0 < 0x010000000000000000), CustomError_6dfcc650());
                                }
                            }
                        }
                        require(!(0 < 0x0100000000), CustomError_6dfcc650());
                        require(!0xc0000000000000000000000000000000, CustomError_6dfcc650());
                    }
                    require(!(0 < 0x0100000000), CustomError_6dfcc650());
                }
            }
        }
        require(0 > 0xffffffffffffffffffffffffffffffff, CustomError_6dfcc650());
        require(0 == (0 < 0), CustomError_6b95e45f());
        require(!(0 > (0 - (0 < 0))), CustomError_6b95e45f());
        require(!0, CustomError_6b95e45f());
        require(((0 | ((0 - (0 < 0)) - (0 > 0) * 0x01)) * 0x80) > (((0 | ((0 - (0 < 0)) - (0 > 0) * 0x01)) * 0x80) + 0), CustomError_6b95e45f());
        if (0x40 > ret0.length) {
        }
    }
    
    /// @custom:selector    0xcedbbe1a
    /// @custom:signature   Unresolved_cedbbe1a(uint80 arg0, uint256 arg1, uint256 arg2, uint256 arg3) public payable returns (bytes memory)
    /// @param              arg0 ["uint80", "bytes10", "int80"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    /// @param              arg2 ["uint256", "bytes32", "int256"]
    /// @param              arg3 ["uint256", "bytes32", "int256"]
    function Unresolved_cedbbe1a(uint80 arg0, uint256 arg1, uint256 arg2, uint256 arg3) public payable returns (bytes memory) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x80);
        require(arg0 - (uint80(arg0)));
        require(arg1 > 0xffffffffffffffff);
        require(!(arg1 + 0x23) < msg.data.length);
        require(arg1 > 0xffffffffffffffff);
        require(((arg1 + (arg1 << 0x06)) + 0x24) > msg.data.length);
        require(arg2 - 11);
        require(arg3 - 11);
        var_a = var_a;
        require(transient[var_a], CustomError_3ee5aeb5());
        var_a = var_a;
        transient[var_a] = 0x01;
        require(!arg1);
        require(0 < (arg1));
        require(!0 < (arg1));
        require(msg.data[0 + (arg1 + 0x24)] - 11);
        require(!0 < (arg1));
        require(msg.data[(0 + (arg1 + 0x24)) + 0x20] - 11);
        require(!(11 < 11), CustomError_9f11cb99());
        require(11 < 11, CustomError_9f11cb99());
        require(!11, CustomError_6dfcc650());
        require(((var_d + 0xa0) > 0xffffffffffffffff) | ((var_d + 0xa0) < var_d), CustomError_6dfcc650());
        var_a = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        uint256 var_d = var_d + 0xa0;
        var_a = ((msg.sender << 0x60) | (uint80(arg0 << 0x10))) | (uint16(msg.data[0 + (arg1 + 0x24)]));
        require(0 == (11 > 0), CustomError_6dfcc650());
        require(uint104(storage_map_e[var_a]), CustomError_6dfcc650());
        require(!(uint104(storage_map_e[var_a])), CustomError_6dfcc650());
        require(!(uint104(storage_map_e[var_a])), CustomError_6dfcc650());
        require((uint104(var_d.length) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20]))) * ((uint104(var_d.length) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20])) + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) / (uint104(storage_map_e[var_a])) + 0x01) > 0xffffffffffffffffffffffffff, CustomError_6dfcc650());
        var_a = 0x6dfcc65000000000000000000000000000000000000000000000000000000000;
        require(0 == (11 < 11), CustomError_0feeacd2());
        require(!(11 > 11), CustomError_0feeacd2());
        require(((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20])) % 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) - ((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20]))) == (((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20])) % 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) < ((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20])))), CustomError_0feeacd2());
        require(!(0x0de0b6b3a763fffffffffffffff21f494c589c0000 > (((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20])) % 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) - ((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20]))) - (((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20])) % 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) < ((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20])))))), CustomError_0feeacd2());
        require((((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20])) - ((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20])) % 0x0de0b6b3a763fffffffffffffff21f494c589c0000) / 0x040000) | (((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20])) % 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) - ((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20]))) - (((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20])) % 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) < ((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20])))) - (((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20])) % 0x0de0b6b3a763fffffffffffffff21f494c589c0000) > ((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20])))) * 0x400000000000000000000000000000000000000000000000000000000000) * 0xbc50fe47bc05ab32c9159825ac691c165e17dca96477328b3e88c46e053ef997) > ((((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20])) - ((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20])) % 0x0de0b6b3a763fffffffffffffff21f494c589c0000) / 0x040000) | (((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20])) % 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) - ((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20]))) - (((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20])) % 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) < ((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20])))) - (((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20])) % 0x0de0b6b3a763fffffffffffffff21f494c589c0000) > ((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20])))) * 0x400000000000000000000000000000000000000000000000000000000000) * 0xbc50fe47bc05ab32c9159825ac691c165e17dca96477328b3e88c46e053ef997) + ((uint104(0xffffffffffffffffffffffffff - (store_b >> 0x10)) * 0x0de0b6b3a7640000) * (uint104(msg.data[(0 + (arg1 + 0x24)) + 0x20])) % 0x0de0b6b3a763fffffffffffffff21f494c589c0000)), CustomError_0feeacd2());
        require(!0x0de0b6b3a763fffffffffffffff21f494c589c0000, CustomError_0feeacd2());
        var_a = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        require(uint104(storage_map_e[var_a]) < (uint104(0 - (msg.data[(0 + (arg1 + 0x24)) + 0x20]))), CustomError_0feeacd2());
        var_a = 0x0feeacd200000000000000000000000000000000000000000000000000000000;
        require(0 == (11 > 0), CustomError_6dfcc650());
        require((address(store_f) + 0) > 0xffffffffffffffffffffffffffffffff, CustomError_6dfcc650());
        store_f = (address(store_f)) | (address(store_f + 0));
        require(0 == (11 > 0), CustomError_6dfcc650());
        require(((store_f >> 0x80) + 0) > 0xffffffffffffffffffffffffffffffff, CustomError_6dfcc650());
        store_f = (address(store_f)) | (address(((store_f >> 0x80) + 0) << 0x80));
        require(0 == (11 < 0), CustomError_504c2692());
        require(!11, CustomError_504c2692());
        require(0 == (11 < 0), CustomError_504c2692());
        require(!11, CustomError_504c2692());
        require(11 > 11, CustomError_504c2692());
        require(11 > 11, CustomError_75b1a521());
        require(!(11 > 0), CustomError_90bfb865());
        address var_k = address(msg.sender);
        address var_l = address(this);
        address var_m = address(11 / 11);
        var_e = 0x64;
        require(((var_d + 0xa0) > 0xffffffffffffffff) | ((var_d + 0xa0) < var_d), CustomError_90bfb865());
        var_d = var_d + 0xa0;
        require(((var_d + 0x40) > 0xffffffffffffffff) | ((var_d + 0x40) < var_d), CustomError_90bfb865());
        var_d = var_d + 0x40;
        (bool success, bytes memory ret0) = address(0x9d39a5de30e57443bff2a8307a4256c8797a3497).transferFrom(var_k, var_l, var_m); // call
        require(!ret0.length, CustomError_90bfb865());
        require(var_u);
        require((((0x60 + var_u) + 0x20) - 0x80) < 0x20);
        require(var_e - var_e);
        require(!var_e);
        require(!11 > 0);
        require(!11 < 0);
        require(arg1 > 0xffffffffffffffff);
        if (ret0.length > 0xffffffffffffffff) {
            if (!11 < 0) {
            }
            if (!0 > 11) {
            }
            require(ret0.length > 0xffffffffffffffff);
        }
        var_a = var_a;
        transient[var_a] = 0;
        return abi.encodePacked(11, 11);
    }
    
    /// @custom:selector    0x372aa224
    /// @custom:signature   setPriceProvider(address arg0) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function setPriceProvider(address arg0) public payable {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        require(msg.sender - (address(store_d)), CustomError_47556579());
        getImmutables = (address(arg0)) | (uint96(getImmutables));
        emit PriceProviderUpdated(address(arg0));
    }
    
    /// @custom:selector    0x35fd631a
    /// @custom:signature   extsload(bytes32 arg0, uint256 arg1) public view returns (bytes memory)
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function extsload(bytes32 arg0, uint256 arg1) public view returns (bytes memory) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x40);
        require(!((var_d + 0x40) + 0x20) < ((var_d + (arg1 << 0x05)) + 0x40));
        return abi.encodePacked(0x20, arg1);
    }
    
    /// @custom:selector    0xdbd035ff
    /// @custom:signature   Unresolved_dbd035ff(uint256 arg0, uint256 arg1) public view returns (bytes memory)
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function Unresolved_dbd035ff(uint256 arg0, uint256 arg1) public view returns (bytes memory) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 > 0xffffffffffffffff);
        require(!(arg0 + 0x23) < msg.data.length);
        require(arg0 > 0xffffffffffffffff);
        require(((arg0 + (arg0 << 0x05)) + 0x24) > msg.data.length);
        require(!((var_d + 0x40) + 0x20) < ((var_d + (arg0 << 0x05)) + 0x40));
        return abi.encodePacked(0x20, (arg0));
    }
    
    /// @custom:selector    0xdfeeb560
    /// @custom:signature   setAdminFeeDestination(address arg0) public payable returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function setAdminFeeDestination(address arg0) public payable returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        require(msg.sender - (address(store_d)), CustomError_47556579());
        store_h = (address(arg0)) | (uint96(store_h));
        emit Event_03e94ab5(address(arg0));
        return ;
    }
}