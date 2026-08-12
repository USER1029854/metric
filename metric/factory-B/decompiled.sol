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
    uint256 public constant unresolved_f453573c = 200000;
    uint256 public constant unresolved_ccacb126 = 1000000;
    
    mapping(bytes32 => bytes32) storage_map_l;
    mapping(bytes32 => bytes32) storage_map_a;
    mapping(bytes32 => bytes32) storage_map_i;
    mapping(bytes32 => bytes32) storage_map_c;
    uint24 public unresolved_466b3cab;
    bytes32 store_j;
    mapping(bytes32 => bytes32) storage_map_m;
    bytes32 store_e;
    bytes32 store_h;
    uint24 public unresolved_22287cc2;
    uint256 public nextPoolIdx;
    address public pendingOwner;
    mapping(bytes32 => bytes32) storage_map_d;
    mapping(bytes32 => bytes32) storage_map_k;
    
    event PoolDeployerSet(address);
    event Event_2a2e13a2();
    event Event_18fc6c18();
    event Event_110b2812();
    event Event_b6f911f9();
    error OwnableUnauthorizedAccount(address);
    event Event_130fa062();
    event Event_36b44189();
    event TokensCollected(address, address, uint256);
    event Event_838f2a3c();
    event Event_b9573b37();
    event Event_54fb41e5();
    event OwnershipTransferStarted(address, address);
    event Event_d9912e81();
    event Event_60079df6();
    event OwnershipTransferred(address, address);
    
    /// @custom:selector    0x1666c8c9
    /// @custom:signature   Unresolved_1666c8c9(address arg0) public view returns (address)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_1666c8c9(address arg0) public view returns (address) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        return address(storage_map_a[var_d]);
    }
    
    /// @custom:selector    0x800887c5
    /// @custom:signature   Unresolved_800887c5(address arg0, address arg1) public payable returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_800887c5(address arg0, address arg1) public payable returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x40);
        require(arg0 - (address(arg0)));
        require(arg1 - (address(arg1)));
        var_a = var_a;
        require(transient[var_a], CustomError_3ee5aeb5());
        var_a = var_a;
        transient[var_a] = 0x01;
        address var_a = address(arg0);
        require(msg.sender - (address(storage_map_c[var_a])), CustomError_058a2da8());
        require(!(address(arg1)), CustomError_cbcd545e());
        storage_map_d[var_c] = (uint96(storage_map_d[var_c])) | (address(arg1));
        emit Event_838f2a3c(address(arg0), address(arg1));
        var_a = var_a;
        transient[var_a] = var_e;
        return ;
    }
    
    /// @custom:selector    0x6c3eab47
    /// @custom:signature   Unresolved_6c3eab47(address arg0) public view returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_6c3eab47(address arg0) public view returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        return storage_map_a[var_d];
    }
    
    /// @custom:selector    0xae8d1133
    /// @custom:signature   Unresolved_ae8d1133(address arg0) public view returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_ae8d1133(address arg0) public view returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        return storage_map_a[var_d];
    }
    
    /// @custom:selector    0x237f4b66
    /// @custom:signature   collectTokens(address arg0, address arg1, uint256 arg2) public payable returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg2 ["uint256", "bytes32", "int256"]
    function collectTokens(address arg0, address arg1, uint256 arg2) public payable returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x60);
        require(arg0 - (address(arg0)));
        require(arg1 - (address(arg1)));
        require(msg.sender - (address(store_e)), CustomError_118cdaa7());
        address var_d = address(this);
        (bool success, bytes memory ret0) = address(arg0).Unresolved_70a08231(var_d); // staticcall
        require(arg2, CustomError_5274afe7());
        require(arg2, CustomError_5274afe7());
        var_b = address(arg1);
        (bool success, bytes memory ret0) = address(arg0).{ value: var_f }Unresolved_a9059cbb(var_b); // call
        require(!(success & (var_g == 0x01)), CustomError_5274afe7());
        emit TokensCollected(address(arg0), address(arg1), arg2);
        return ;
        require(bytes1(!success));
        var_h = var_h;
        require(!((!ret0.length) & (address(arg0).code.length) & (success)), CustomError_5274afe7());
        emit TokensCollected(address(arg0), address(arg1), arg2);
        return ;
        return ;
        require(0x20 > ret0.length);
        require(((var_h + 0x20) > 0xffffffffffffffff) | ((var_h + 0x20) < var_h));
        uint256 var_h = var_h + 0x20;
        require(((var_h + 0x20) - var_h) < 0x20);
        require(arg2, CustomError_5274afe7());
        require(var_h.length, CustomError_5274afe7());
        return ;
        var_b = address(arg1);
        (bool success, bytes memory ret0) = address(arg0).{ value: var_f }many_msg_babbage(var_b); // call
        require(!(success & (var_g == 0x01)), CustomError_5274afe7());
        var_h = var_h;
        emit TokensCollected(address(arg0), address(arg1), var_h.length);
        return ;
        require(bytes1(!success));
        var_h = var_h;
        require(!((!ret0.length) & (address(arg0).code.length) & (success)), CustomError_5274afe7());
        emit TokensCollected(address(arg0), address(arg1), var_h.length);
        return ;
    }
    
    /// @custom:selector    0xff03ad56
    /// @custom:signature   collectEth(address arg0, uint256 arg1) public payable returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function collectEth(address arg0, uint256 arg1) public payable returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x40);
        require(arg0 - (address(arg0)));
        require(msg.sender - (address(store_e)), CustomError_118cdaa7());
        require(arg1, "ETH transfer failed");
        require(arg1, "ETH transfer failed");
        (bool success, bytes memory ret0) = address(arg0).transfer(arg1);
        require(!ret0.length, "ETH transfer failed");
        emit TokensCollected(var_g, address(arg0), arg1);
        return ;
        require(ret0.length > 0xffffffffffffffff, "ETH transfer failed");
        require(((var_h + (uint248((0x20 + (ret0.length + 0x1f)) + 0x1f))) > 0xffffffffffffffff) | ((var_h + (uint248((0x20 + (ret0.length + 0x1f)) + 0x1f))) < var_h), "ETH transfer failed");
        return ;
        require(address(this).balance, "ETH transfer failed");
        return ;
        (bool success, bytes memory ret0) = address(arg0).transfer(address(this).balance);
        require(!ret0.length, "ETH transfer failed");
        emit TokensCollected(var_g, address(arg0), address(this).balance);
        return ;
        require(ret0.length > 0xffffffffffffffff);
        require(((var_h + (uint248((0x20 + (ret0.length + 0x1f)) + 0x1f))) > 0xffffffffffffffff) | ((var_h + (uint248((0x20 + (ret0.length + 0x1f)) + 0x1f))) < var_h));
    }
    
    /// @custom:selector    0x2d84eb5a
    /// @custom:signature   Unresolved_2d84eb5a(address arg0, address arg1) public payable returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_2d84eb5a(address arg0, address arg1) public payable returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x40);
        require(arg0 - (address(arg0)));
        require(arg1 - (address(arg1)));
        var_a = var_a;
        require(transient[var_a], CustomError_3ee5aeb5());
        var_a = var_a;
        transient[var_a] = 0x01;
        address var_a = address(arg0);
        require(msg.sender - (address(storage_map_c[var_a])), CustomError_058a2da8());
        require(!(address(arg1)), CustomError_b5eba9f0());
        require(address(arg1) == (address(storage_map_d[var_c])), CustomError_b5eba9f0());
        storage_map_d[var_c] = (address(arg1)) | (uint96(storage_map_d[var_c]));
        emit Event_b6f911f9(address(arg0), address(storage_map_d[var_c]), address(arg1));
        var_a = var_a;
        transient[var_a] = var_d;
        return ;
    }
    
    /// @custom:selector    0x51ecb026
    /// @custom:signature   Unresolved_51ecb026(address arg0) public payable returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_51ecb026(address arg0) public payable returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        var_a = var_a;
        require(transient[var_a], CustomError_3ee5aeb5());
        var_a = var_a;
        transient[var_a] = 0x01;
        require(msg.sender - (address(store_e)), CustomError_118cdaa7());
        uint256 var_d = 0;
        (bool success, bytes memory ret0) = address(arg0).Unresolved_1e2eaeaf(var_d); // staticcall
        require(((var_e + 0xc0) > 0xffffffffffffffff) | ((var_e + 0xc0) < var_e));
        uint256 var_e = var_e + 0xc0;
        require(0);
        require(!0 == 0x01);
        require(!address(arg0).code.length);
        var_l = 0x02;
        (bool success, bytes memory ret0) = address(arg0).{ value: var_m }Unresolved_3ff20c8a(var_l); // call
        var_a = var_a;
        transient[var_a] = var_m;
        return ;
        require(((var_e + (uint248(var_m + 0x1f))) > 0xffffffffffffffff) | ((var_e + (uint248(var_m + 0x1f))) < var_e));
        var_e = var_e + (uint248(var_m + 0x1f));
        require(var_m);
        var_a = var_a;
        transient[var_a] = var_m;
        return ;
        require(0, CustomError_41a196c2());
        require(0x20 > ret0.length);
        require(((var_e + 0x20) > 0xffffffffffffffff) | ((var_e + 0x20) < var_e));
        var_e = var_e + 0x20;
        require(((var_e + 0x20) - var_e) < 0x20);
    }
    
    /// @custom:selector    0x765d9ea7
    /// @custom:signature   Unresolved_765d9ea7(uint24 arg0) public payable returns (uint256)
    /// @param              arg0 ["uint24", "bytes3", "int24"]
    function Unresolved_765d9ea7(uint24 arg0) public payable returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (uint24(arg0)));
        require(msg.sender - (address(store_e)), CustomError_118cdaa7());
        require(uint24(arg0) > (uint24(unresolved_466b3cab)), CustomError_499fddb1());
        unresolved_22287cc2 = (uint232(unresolved_22287cc2)) | (uint24(arg0 << 0xb8));
        emit Event_18fc6c18(uint24(unresolved_22287cc2 >> 0xb8), uint24(arg0));
        return ;
    }
    
    /// @custom:selector    0x158b67fa
    /// @custom:signature   Unresolved_158b67fa(uint256 arg0) public view returns (address)
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    function Unresolved_158b67fa(uint256 arg0) public view returns (address) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        return address(storage_map_a[var_d]);
    }
    
    /// @custom:selector    0x5618e323
    /// @custom:signature   Unresolved_5618e323(address arg0) public payable returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_5618e323(address arg0) public payable returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        var_a = var_a;
        require(transient[var_a], CustomError_3ee5aeb5());
        var_a = var_a;
        transient[var_a] = 0x01;
        address var_a = address(arg0);
        require(msg.sender - (address(storage_map_c[var_a])), CustomError_058a2da8());
        require(!(address(storage_map_d[var_c])), CustomError_f9e7e049());
        storage_map_d[var_c] = uint96(storage_map_d[var_c]);
        emit Event_d9912e81(address(arg0), address(storage_map_d[var_c]));
        var_a = var_a;
        transient[var_a] = var_d;
        return ;
    }
    
    /// @custom:selector    0x79ba5097
    /// @custom:signature   acceptOwnership() public payable returns (uint256)
    function acceptOwnership() public payable returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < var_a);
        require(address(pendingOwner) - msg.sender, CustomError_118cdaa7());
        address var_c = msg.sender;
        pendingOwner = uint96(pendingOwner);
        store_h = var_c | (uint96(store_h));
        emit OwnershipTransferred(address(store_h), msg.sender);
        return ;
    }
    
    /// @custom:selector    0x17de3c7e
    /// @custom:signature   collectPoolFees(address arg0) public payable returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function collectPoolFees(address arg0) public payable returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        var_a = var_a;
        require(transient[var_a], CustomError_3ee5aeb5());
        var_a = var_a;
        transient[var_a] = 0x01;
        require(((var_c + 0x80) > 0xffffffffffffffff) | ((var_c + 0x80) < var_c));
        uint256 var_c = var_c + 0x80;
        require(!address(arg0).code.length);
        uint24 var_k = uint24(storage_map_i[var_f]);
        (bool success, bytes memory ret0) = address(arg0).{ value: var_p }Unresolved_5d7cef55(var_k); // call
        var_a = var_a;
        transient[var_a] = var_p;
        return ;
        require(((var_c + (uint248(var_p + 0x1f))) > 0xffffffffffffffff) | ((var_c + (uint248(var_p + 0x1f))) < var_c));
        require(var_p);
        var_a = var_a;
        transient[var_a] = var_p;
        return ;
    }
    
    /// @custom:selector    0x01c54a29
    /// @custom:signature   Unresolved_01c54a29(address arg0) public view returns (address)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_01c54a29(address arg0) public view returns (address) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        address var_a = address(arg0);
        return address(storage_map_c[var_a]);
    }
    
    /// @custom:selector    0xf2fde38b
    /// @custom:signature   transferOwnership(address arg0) public payable returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function transferOwnership(address arg0) public payable returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        require(msg.sender - (address(store_e)), CustomError_118cdaa7());
        pendingOwner = (address(arg0)) | (uint96(pendingOwner));
        emit OwnershipTransferStarted(address(store_j), address(arg0));
        return ;
    }
    
    /// @custom:selector    0x47da6012
    /// @custom:signature   Unresolved_47da6012(address arg0, uint256 arg1, uint16 arg2, uint16 arg3) public payable returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    /// @param              arg2 ["uint16", "bytes2", "int16"]
    /// @param              arg3 ["uint16", "bytes2", "int16"]
    function Unresolved_47da6012(address arg0, uint256 arg1, uint16 arg2, uint16 arg3) public payable returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x80);
        require(arg0 - (address(arg0)));
        require(arg1 - 11);
        require(arg2 - (uint16(arg2)));
        require(arg3 - (uint16(arg3)));
        var_a = var_a;
        require(transient[var_a], CustomError_3ee5aeb5());
        var_a = var_a;
        transient[var_a] = 0x01;
        address var_a = address(arg0);
        require(msg.sender - (address(storage_map_c[var_a])), CustomError_058a2da8());
        require(!address(arg0).code.length);
        uint256 var_d = 11;
        (bool success, bytes memory ret0) = address(arg0).{ value: var_g }Unresolved_f91e9c41(var_d); // call
        var_a = var_a;
        transient[var_a] = var_g;
        return ;
        require(((var_h + (uint248(var_g + 0x1f))) > 0xffffffffffffffff) | ((var_h + (uint248(var_g + 0x1f))) < var_h));
        require(var_g);
        var_a = var_a;
        transient[var_a] = var_g;
        return ;
    }
    
    /// @custom:selector    0x3e9b7fdb
    /// @custom:signature   Unresolved_3e9b7fdb(address arg0) public view returns (address)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_3e9b7fdb(address arg0) public view returns (address) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        return address(storage_map_a[var_d]);
    }
    
    /// @custom:selector    0x123c6bcc
    /// @custom:signature   Unresolved_123c6bcc(address arg0, uint24 arg1, uint24 arg2) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint24", "bytes3", "int24"]
    /// @param              arg2 ["uint24", "bytes3", "int24"]
    function Unresolved_123c6bcc(address arg0, uint24 arg1, uint24 arg2) public payable {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x60);
        require(arg0 - (address(arg0)));
        require(arg1 - (uint24(arg1)));
        require(arg2 - (uint24(arg2)));
        var_a = var_a;
        require(transient[var_a], CustomError_3ee5aeb5());
        var_a = var_a;
        transient[var_a] = 0x01;
        address var_a = address(arg0);
        require(msg.sender - (address(storage_map_c[var_a])), CustomError_058a2da8());
        require(uint24(arg1) > (unresolved_22287cc2 >> 0xe8), CustomError_68b93b31());
        require(uint24(arg2) > (uint24(unresolved_466b3cab >> 0x18)), CustomError_68b93b31());
        require(((var_c + 0x80) > 0xffffffffffffffff) | ((var_c + 0x80) < var_c));
        var_a = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        uint256 var_c = var_c + 0x80;
        var_a = address(arg0);
        require(!address(arg0).code.length);
        address var_j = uint24(storage_map_c[var_a]);
        (bool success, bytes memory ret0) = address(arg0).Unresolved_5d7cef55(var_j); // call
        storage_map_k[var_o] = (uint232(storage_map_k[var_o])) | (uint24(var_c.length));
        storage_map_k[var_o] = (uint232(storage_map_k[var_o])) | (uint24(var_p << 0x18));
        storage_map_k[var_o] = (uint208(storage_map_k[var_o]) | (uint24(var_q << 0x30))) | (uint24(var_r << 0x48));
        require(uint24(var_c.length) + (uint24(var_s)) > 0xffffff);
        require(((var_c + 0) > 0xffffffffffffffff) | ((var_c + 0) < var_c));
    }
    
    /// @custom:selector    0x9d8eac6e
    /// @custom:signature   Unresolved_9d8eac6e(address arg0, address arg1) public payable returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_9d8eac6e(address arg0, address arg1) public payable returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x40);
        require(arg0 - (address(arg0)));
        require(arg1 - (address(arg1)));
        var_a = var_a;
        require(transient[var_a], CustomError_3ee5aeb5());
        var_a = var_a;
        transient[var_a] = 0x01;
        address var_a = address(arg0);
        require(msg.sender - (address(storage_map_c[var_a])), CustomError_058a2da8());
        (bool success, bytes memory ret0) = address(arg0).getImmutables(); // staticcall
        require(address(var_d), CustomError_3e9864e3());
        require(!address(arg1));
        (bool success, bytes memory ret0) = address(arg1).token0(); // staticcall
        require(address(var_e) == 0);
        (bool success, bytes memory ret0) = address(arg1).token1(); // staticcall
        require(!(address(var_f)) == 0);
        var_g = 0x03;
        (bool success, bytes memory ret0) = address(arg0).Unresolved_1e2eaeaf(var_g); // staticcall
        require(!address(var_h));
        require(block.timestamp > (block.timestamp + storage_map_l[var_i]));
        storage_map_l[var_i] = (address(arg1)) | (uint96(storage_map_l[var_i]));
        storage_map_l[var_i] = block.timestamp + storage_map_l[var_i];
        emit Event_2a2e13a2(address(arg0), address(var_h), address(arg1), block.timestamp + storage_map_m[var_k]);
        var_a = var_a;
        transient[var_a] = var_h;
        return ;
        require(block.timestamp > (block.timestamp + storage_map_l[var_i]));
        storage_map_l[var_i] = (address(arg1)) | (uint96(storage_map_l[var_i]));
        storage_map_l[var_i] = block.timestamp + storage_map_l[var_i];
        emit Event_2a2e13a2(address(arg0), address(var_d), address(arg1), block.timestamp + storage_map_l[var_i]);
        var_a = var_a;
        transient[var_a] = var_h;
        return ;
        require(0x20 > ret0.length);
        require(((var_l + 0x20) > 0xffffffffffffffff) | ((var_l + 0x20) < var_l));
        uint256 var_l = var_l + 0x20;
        require(((var_l + 0x20) - var_l) < 0x20);
        require(0x20 > ret0.length);
        require(((var_l + 0x20) > 0xffffffffffffffff) | ((var_l + 0x20) < var_l));
        var_l = var_l + 0x20;
        require(((var_l + 0x20) - var_l) < 0x20);
        require(var_l.length - (address(var_l.length)));
        require(0x20 > ret0.length);
        require(((var_l + 0x20) > 0xffffffffffffffff) | ((var_l + 0x20) < var_l));
        var_l = var_l + 0x20;
        require(((var_l + 0x20) - var_l) < 0x20);
        require(var_l.length - (address(var_l.length)));
        if (0x0300 > ret0.length) {
        }
    }
    
    /// @custom:selector    0x55aca1ec
    /// @custom:signature   pausePool(address arg0) public payable returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function pausePool(address arg0) public payable returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        var_a = var_a;
        require(transient[var_a], CustomError_3ee5aeb5());
        var_a = var_a;
        transient[var_a] = 0x01;
        address var_a = address(arg0);
        require(msg.sender - (address(storage_map_c[var_a])), CustomError_058a2da8());
        uint256 var_d = 0;
        (bool success, bytes memory ret0) = address(arg0).Unresolved_1e2eaeaf(var_d); // staticcall
        require(((var_e + 0xc0) > 0xffffffffffffffff) | ((var_e + 0xc0) < var_e), CustomError_41a196c2());
        uint256 var_e = var_e + 0xc0;
        require(0, CustomError_41a196c2());
        require(!address(arg0).code.length);
        var_n = 0x01;
        (bool success, bytes memory ret0) = address(arg0).{ value: var_o }Unresolved_3ff20c8a(var_n); // call
        var_a = var_a;
        transient[var_a] = var_o;
        return ;
        require(((var_e + (uint248(var_o + 0x1f))) > 0xffffffffffffffff) | ((var_e + (uint248(var_o + 0x1f))) < var_e));
        var_e = var_e + (uint248(var_o + 0x1f));
        require(var_o);
        var_a = var_a;
        transient[var_a] = var_o;
        return ;
        require(0x20 > ret0.length);
        require(((var_e + 0x20) > 0xffffffffffffffff) | ((var_e + 0x20) < var_e));
        var_e = var_e + 0x20;
        require(((var_e + 0x20) - var_e) < 0x20);
    }
    
    /// @custom:selector    0x5b16ebb7
    /// @custom:signature   isPool(address arg0) public view returns (bool)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function isPool(address arg0) public view returns (bool) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        return storage_map_a[var_d];
    }
    
    /// @custom:selector    0x98a5b1c4
    /// @custom:signature   poolAdmin(address arg0) public view returns (address)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function poolAdmin(address arg0) public view returns (address) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        return address(storage_map_a[var_d]);
    }
    
    /// @custom:selector    0xe7b61424
    /// @custom:signature   Unresolved_e7b61424(address arg0) public payable returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_e7b61424(address arg0) public payable returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        var_a = var_a;
        require(transient[var_a], CustomError_3ee5aeb5());
        var_a = var_a;
        transient[var_a] = 0x01;
        require(msg.sender - (address(store_e)), CustomError_118cdaa7());
        uint256 var_d = 0;
        (bool success, bytes memory ret0) = address(arg0).Unresolved_1e2eaeaf(var_d); // staticcall
        require(((var_e + 0xc0) > 0xffffffffffffffff) | ((var_e + 0xc0) < var_e));
        uint256 var_e = var_e + 0xc0;
        require(0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe);
        require(!address(arg0).code.length);
        var_l = 0x01;
        (bool success, bytes memory ret0) = address(arg0).{ value: var_m }Unresolved_3ff20c8a(var_l); // call
        var_a = var_a;
        transient[var_a] = var_m;
        return ;
        require(((var_e + (uint248(var_m + 0x1f))) > 0xffffffffffffffff) | ((var_e + (uint248(var_m + 0x1f))) < var_e));
        var_e = var_e + (uint248(var_m + 0x1f));
        require(var_m);
        var_a = var_a;
        transient[var_a] = var_m;
        return ;
        require(0x20 > ret0.length);
        require(((var_e + 0x20) > 0xffffffffffffffff) | ((var_e + 0x20) < var_e));
        var_e = var_e + 0x20;
        require(((var_e + 0x20) - var_e) < 0x20);
    }
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:signature   owner() public view returns (address)
    function owner() public view returns (address) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < var_a);
        return address(store_h);
    }
    
    /// @custom:selector    0x66f249eb
    /// @custom:signature   Unresolved_66f249eb(address arg0, uint24 arg1, uint24 arg2) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint24", "bytes3", "int24"]
    /// @param              arg2 ["uint24", "bytes3", "int24"]
    function Unresolved_66f249eb(address arg0, uint24 arg1, uint24 arg2) public payable {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x60);
        require(arg0 - (address(arg0)));
        require(arg1 - (uint24(arg1)));
        require(arg2 - (uint24(arg2)));
        require(msg.sender - (address(store_e)), CustomError_118cdaa7());
        var_a = var_a;
        require(transient[var_a], CustomError_3ee5aeb5());
        var_a = var_a;
        transient[var_a] = 0x01;
        require(uint24(arg1) > (uint24(unresolved_22287cc2 >> 0xd0)), CustomError_499fddb1());
        require(uint24(arg2) > (uint24(unresolved_466b3cab)), CustomError_499fddb1());
        require(((var_d + 0x80) > 0xffffffffffffffff) | ((var_d + 0x80) < var_d));
        uint256 var_d = var_d + 0x80;
        require(!address(arg0).code.length);
        uint24 var_k = uint24(storage_map_i[var_f]);
        (bool success, bytes memory ret0) = address(arg0).{ value: var_p }Unresolved_5d7cef55(var_k); // call
        require(uint24(var_q) > (unresolved_22287cc2 >> 0xe8));
        emit Event_36b44189(address(arg0), unresolved_22287cc2 >> 0xe8);
        require(uint24(var_r) > (uint24(unresolved_466b3cab >> 0x18)));
        emit Event_110b2812(address(arg0), uint24(unresolved_466b3cab >> 0x18));
        require(((var_d + 0x80) > 0xffffffffffffffff) | ((var_d + 0x80) < var_d));
        var_d = var_d + 0x80;
        storage_map_i[var_f] = (uint232(storage_map_i[var_f])) | (uint24(var_d.length));
        storage_map_i[var_f] = (uint232(storage_map_i[var_f])) | (uint24(var_q << 0x18));
        storage_map_i[var_f] = (uint208(storage_map_i[var_f]) | (uint24(var_v << 0x30))) | (uint24(var_r << 0x48));
        require(uint24(var_d.length) + (uint24(var_w)) > 0xffffff);
        require(((var_d + (uint248(var_p + 0x1f))) > 0xffffffffffffffff) | ((var_d + (uint248(var_p + 0x1f))) < var_d));
        require(var_p);
    }
    
    /// @custom:selector    0xf21c38cd
    /// @custom:signature   unpausePool(address arg0) public payable returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function unpausePool(address arg0) public payable returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        var_a = var_a;
        require(transient[var_a], CustomError_3ee5aeb5());
        var_a = var_a;
        transient[var_a] = 0x01;
        address var_a = address(arg0);
        require(msg.sender - (address(storage_map_c[var_a])), CustomError_058a2da8());
        uint256 var_d = 0;
        (bool success, bytes memory ret0) = address(arg0).Unresolved_1e2eaeaf(var_d); // staticcall
        require(((var_e + 0xc0) > 0xffffffffffffffff) | ((var_e + 0xc0) < var_e));
        uint256 var_e = var_e + 0xc0;
        require(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
        require(!address(arg0).code.length);
        var_m = var_n;
        (bool success, bytes memory ret0) = address(arg0).{ value: var_n }Unresolved_3ff20c8a(var_m); // call
        var_a = var_a;
        transient[var_a] = var_n;
        return ;
        require(((var_e + (uint248(var_n + 0x1f))) > 0xffffffffffffffff) | ((var_e + (uint248(var_n + 0x1f))) < var_e));
        var_e = var_e + (uint248(var_n + 0x1f));
        require(var_n);
        var_a = var_a;
        transient[var_a] = var_n;
        return ;
        require(0x20 > ret0.length);
        require(((var_e + 0x20) > 0xffffffffffffffff) | ((var_e + 0x20) < var_e));
        var_e = var_e + 0x20;
        require(((var_e + 0x20) - var_e) < 0x20);
    }
    
    /// @custom:selector    0x5685fc23
    /// @custom:signature   Unresolved_5685fc23(uint256 arg0) public view
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    function Unresolved_5685fc23(uint256 arg0) public view {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 > 0xffffffffffffffff);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + (msg.data.length - arg0)) < 0x02e0);
        require(!address(unresolved_22287cc2));
        require(arg0  - (address(arg0 )));
        require(!(!address(arg0 )), CustomError_07fe7bae());
        require(!(!address(arg0 )), CustomError_07fe7bae());
        require(!(address(arg0 )), CustomError_07fe7bae());
    }
    
    /// @custom:selector    0x94e79d21
    /// @custom:signature   Unresolved_94e79d21(uint24 arg0) public payable returns (uint256)
    /// @param              arg0 ["uint24", "bytes3", "int24"]
    function Unresolved_94e79d21(uint24 arg0) public payable returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (uint24(arg0)));
        require(msg.sender - (address(store_e)), CustomError_118cdaa7());
        require(uint24(arg0) > (uint24(unresolved_22287cc2 >> 0xd0)), CustomError_499fddb1());
        unresolved_22287cc2 = (uint232(unresolved_22287cc2)) | (uint24(arg0 << 0xa0));
        emit Event_60079df6(uint24(unresolved_22287cc2 >> 0xa0), uint24(arg0));
        return ;
    }
    
    /// @custom:selector    0xa23b0cbe
    /// @custom:signature   Unresolved_a23b0cbe(address arg0) public payable returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_a23b0cbe(address arg0) public payable returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        var_a = var_a;
        require(transient[var_a], CustomError_3ee5aeb5());
        var_a = var_a;
        transient[var_a] = 0x01;
        require(!(address(storage_map_d[var_c])), CustomError_665c7edf());
        require(msg.sender - (address(storage_map_d[var_c])), CustomError_665c7edf());
        storage_map_d[var_c] = (uint96(storage_map_d[var_c])) | (address(storage_map_d[var_c]));
        storage_map_d[var_c] = uint96(storage_map_d[var_c]);
        emit Event_130fa062(address(arg0), address(storage_map_d[var_c]), address(storage_map_d[var_c]));
        var_a = var_a;
        transient[var_a] = var_g;
        return ;
    }
    
    /// @custom:selector    0x715018a6
    /// @custom:signature   renounceOwnership() public payable returns (uint256)
    function renounceOwnership() public payable returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < var_a);
        require(msg.sender - (address(store_e)), CustomError_118cdaa7());
        pendingOwner = uint96(pendingOwner);
        store_h = uint96(store_h);
        emit OwnershipTransferred(address(store_h), var_a);
        return ;
    }
    
    /// @custom:selector    0x2f5bdcb1
    /// @custom:signature   Unresolved_2f5bdcb1(uint24 arg0, uint24 arg1, uint24 arg2, uint24 arg3) public payable returns (uint256)
    /// @param              arg0 ["uint24", "bytes3", "int24"]
    /// @param              arg1 ["uint24", "bytes3", "int24"]
    /// @param              arg2 ["uint24", "bytes3", "int24"]
    /// @param              arg3 ["uint24", "bytes3", "int24"]
    function Unresolved_2f5bdcb1(uint24 arg0, uint24 arg1, uint24 arg2, uint24 arg3) public payable returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x80);
        require(arg0 - (uint24(arg0)));
        require(arg1 - (uint24(arg1)));
        require(arg2 - (uint24(arg2)));
        require(arg3 - (uint24(arg3)));
        require(msg.sender - (address(store_e)), CustomError_118cdaa7());
        require(!(uint24(arg0) > 0x030d40), CustomError_8baf664d());
        require(!(uint24(arg0) > 0x030d40), CustomError_8baf664d());
        require(!(uint24(arg0) > 0x030d40), CustomError_8baf664d());
        require(uint24(arg0) > 0x030d40, CustomError_8baf664d());
        unresolved_22287cc2 = (uint208(unresolved_22287cc2) | (uint24(arg0 << 0xd0))) | (uint24(arg1 << 0xe8));
        unresolved_466b3cab = (uint208(unresolved_466b3cab) | (uint24(arg2))) | (uint24(arg3 << 0x18));
        require(uint24(uint208(unresolved_22287cc2) | (arg0 << 0xd0) | (arg1 << 0xe8) >> 0xa0) > (uint24(arg0)));
        unresolved_22287cc2 = (uint24(arg0 << 0xa0)) | (uint24(arg1 << 0xe8) | (uint184(unresolved_22287cc2) | (uint24(arg0 << 0xd0))));
        emit Event_60079df6(uint24(uint208(unresolved_22287cc2) | (arg0 << 0xd0) | (arg1 << 0xe8) >> 0xa0), uint24(arg0));
        require(uint24(unresolved_22287cc2 >> 0xb8) > (uint24(arg2)));
        unresolved_22287cc2 = (uint24(arg2 << 0xb8)) | (uint232(unresolved_22287cc2));
        emit Event_18fc6c18(uint24(unresolved_22287cc2 >> 0xb8), uint24(arg2));
        emit Event_b9573b37(uint24(arg0), uint24(arg1), uint24(arg2), uint24(arg3));
        return ;
        emit Event_b9573b37(uint24(arg0), uint24(arg1), uint24(arg2), uint24(arg3));
        return ;
    }
    
    /// @custom:selector    0x6a226c1c
    /// @custom:signature   Unresolved_6a226c1c(address arg0) public payable returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_6a226c1c(address arg0) public payable returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        var_a = var_a;
        require(transient[var_a], CustomError_3ee5aeb5());
        var_a = var_a;
        transient[var_a] = 0x01;
        address var_a = address(arg0);
        require(msg.sender - (address(storage_map_c[var_a])), CustomError_058a2da8());
        require(!(address(storage_map_d[var_c])), CustomError_c5fe1b42());
        require(block.timestamp < storage_map_d[var_c], CustomError_c5fe1b42());
        (bool success, bytes memory ret0) = address(arg0).getImmutables(); // staticcall
        require(address(var_g), CustomError_3e9864e3());
        require(!address(storage_map_d[var_c]));
        (bool success, bytes memory ret0) = address(storage_map_d[var_c]).token0(); // staticcall
        require(address(var_h) == 0);
        (bool success, bytes memory ret0) = address(storage_map_d[var_c]).token1(); // staticcall
        require(!(address(var_i)) == 0);
        require(!address(arg0).code.length);
        address var_j = address(storage_map_d[var_c]);
        (bool success, bytes memory ret0) = address(arg0).{ value: var_k }Unresolved_372aa224(var_j); // call
        storage_map_d[var_c] = uint96(storage_map_d[var_c]);
        storage_map_d[var_c] = var_k;
        emit Event_54fb41e5(address(arg0), address(storage_map_d[var_c]));
        var_a = var_a;
        transient[var_a] = var_k;
        return ;
        require(((var_l + (uint248(var_k + 0x1f))) > 0xffffffffffffffff) | ((var_l + (uint248(var_k + 0x1f))) < var_l));
        uint248 var_l = var_l + (uint248(var_k + 0x1f));
        require(var_k);
        storage_map_d[var_c] = uint96(storage_map_d[var_c]);
        storage_map_d[var_c] = var_k;
        emit Event_54fb41e5(address(arg0), address(storage_map_d[var_c]));
        var_a = var_a;
        transient[var_a] = var_k;
        return ;
        require(0x20 > ret0.length);
        require(((var_l + 0x20) > 0xffffffffffffffff) | ((var_l + 0x20) < var_l));
        var_l = var_l + 0x20;
        require(((var_l + 0x20) - var_l) < 0x20);
        require(var_l.length - (address(var_l.length)));
        require(0x20 > ret0.length);
        require(((var_l + 0x20) > 0xffffffffffffffff) | ((var_l + 0x20) < var_l));
        var_l = var_l + 0x20;
        require(((var_l + 0x20) - var_l) < 0x20);
        require(var_l.length - (address(var_l.length)));
        if (0x0300 > ret0.length) {
        }
    }
    
    /// @custom:selector    0x1aa3e95d
    /// @custom:signature   setPoolDeployer(address arg0) public payable returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function setPoolDeployer(address arg0) public payable returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        require(msg.sender - (address(store_e)), CustomError_118cdaa7());
        require(address(unresolved_22287cc2), CustomError_97bdde6a());
        unresolved_22287cc2 = (address(arg0)) | (uint96(unresolved_22287cc2));
        emit PoolDeployerSet(address(arg0));
        return ;
    }
    
    /// @custom:selector    0x4b737da4
    /// @custom:signature   Unresolved_4b737da4(address arg0) public view returns (bytes memory)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_4b737da4(address arg0) public view returns (bytes memory) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        return abi.encodePacked(uint24(storage_map_a[var_d]), uint24(storage_map_a[var_d] >> 0x18), uint24(storage_map_a[var_d] >> 0x30), uint24(storage_map_a[var_d] >> 0x48));
    }
    
    /// @custom:selector    0x3dbaf18e
    /// @custom:signature   Unresolved_3dbaf18e(address arg0) public view returns (uint256)
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_3dbaf18e(address arg0) public view returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        return storage_map_a[var_d];
    }
}