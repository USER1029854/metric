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
    bytes public constant getImmutables = 000000000000000000000000622911384e7973439b8be305f5e3fc3c5736ede40000000000000000000000000bd7d308f8e1639fab988df18a8011f41eacad730000000000000000000000005fc5360d0400a0fd4f2af552add042d716f1d1680000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000e8d4a510000000000000000000000000000000000000000000000000000de0b6b3a764000000000000000000000000000000000000000000000000006194049f30f720000000000000000000000000000000000000000000000000000000000000000003e80000000000000000000000000000000000000000000000000000000000000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec0000000000000000000000000000000000000000000000000000000000000014000000000000000000000000b1e4142db0257c35ccd2105699d1cc7250179117000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001;
    
    bytes32 store_f;
    address store_a;
    uint24 store_c;
    mapping(bytes32 => bytes32) storage_map_b;
    bytes32 store_e;
    bytes32 store_d;
    
    event PriceProviderUpdated(address);
    error CustomError_00000000();
    event Event_d708418b();
    event Event_0e7d070a();
    
    /// @custom:selector    0xd8306786
    /// @custom:signature   inSwap() public view returns (uint256)
    function inSwap() public view returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0);
        if (((var_d + 0x40) > 0xffffffffffffffff) | ((var_d + 0x40) < var_d)) {
            var_a = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
            if (transient[uint248(keccak256(var_f))] == var_a) {
                if (0) {
                    return 0;
                    return address(store_a);
                    return 0;
                }
            }
        }
    }
    
    /// @custom:selector    0xec069057
    /// @custom:signature   Unresolved_ec069057() public payable
    function Unresolved_ec069057() public payable {
        require(msg.value);
        require((msg.data.length + 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc) < 0);
        require(((var_c + 0x40) > 0xffffffffffffffff) | ((var_c + 0x40) < var_c), CustomError_3ee5aeb5());
        uint256 var_c = var_c + 0x40;
        require(transient[uint248(keccak256(var_f))], CustomError_3ee5aeb5());
        require(((var_c + 0x40) > 0xffffffffffffffff) | ((var_c + 0x40) < var_c), CustomError_46a14930());
        var_d = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        var_c = var_c + 0x40;
        transient[uint248(keccak256(var_f))] = var_d;
        require(0, CustomError_46a14930());
        (bool success, bytes memory ret0) = address(0).getBidAndAskPrice(); // call
        require(!ret0.length, CustomError_46a14930());
        require(ret0.length > 0xffffffffffffffff, CustomError_46a14930());
        require(((var_c + (uint248((0x20 + (ret0.length + 0x1f)) + 0x1f))) > 0xffffffffffffffff) | ((var_c + (uint248((0x20 + (ret0.length + 0x1f)) + 0x1f))) < var_c), CustomError_46a14930());
        var_c = var_c + (uint248((0x20 + (ret0.length + 0x1f)) + 0x1f));
        if (!0 < 0) {
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
                                                        require(!(0 < 0), CustomError_6b95e45f());
                                                        require(!0, CustomError_6b95e45f());
                                                    }
                                                    require(!((0 == 0) | !0), CustomError_6b95e45f());
                                                }
                                            }
                                        }
                                        require(!(0 > 0x01), CustomError_6b95e45f());
                                        require(!(0 < 0x0100000000000000000000000000000000), CustomError_6b95e45f());
                                    }
                                    require(!(0 < 0x010000000000000000), CustomError_6b95e45f());
                                }
                            }
                        }
                        require(!(0 < 0x0100000000), CustomError_6b95e45f());
                        require(!0xc0000000000000000000000000000000, CustomError_6b95e45f());
                    }
                    require(!(0 < 0x0100000000), CustomError_6b95e45f());
                }
            }
        }
        require(0 == (0 < 0), CustomError_6b95e45f());
        require(!(0 > (0 - (0 < 0))), CustomError_6b95e45f());
        require(!0, CustomError_6b95e45f());
        require(((0 | ((0 - (0 < 0)) - (0 > 0) * 0x01)) * 0x80) > (((0 | ((0 - (0 < 0)) - (0 > 0) * 0x01)) * 0x80) + 0), CustomError_6b95e45f());
        require(((((0 | ((0 - (0 < 0)) - (0 > 0) * 0x01)) * 0x80) + 0) + 0xffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000) > (((0 | ((0 - (0 < 0)) - (0 > 0) * 0x01)) * 0x80) + 0), CustomError_6b95e45f());
        require(((var_c + 0xa0) > 0xffffffffffffffff) | ((var_c + 0xa0) < var_c), CustomError_6b95e45f());
        var_d = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        require(11 < 0, CustomError_6b95e45f());
        require(((0 * (0x0f4240 + 11)) % 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) - (0 * (0x0f4240 + 11)) == (((0 * (0x0f4240 + 11)) % 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) < (0 * (0x0f4240 + 11))), CustomError_6b95e45f());
        require(!(0x0f4240 > (((0 * (0x0f4240 + 11)) % 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) - (0 * (0x0f4240 + 11)) - (((0 * (0x0f4240 + 11)) % 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) < (0 * (0x0f4240 + 11))))), CustomError_6b95e45f());
        if (0x40 > ret0.length) {
        }
    }
    
    /// @custom:selector    0xfbde1732
    /// @custom:signature   Unresolved_fbde1732(address arg0, uint80 arg1, uint256 arg2, uint256 arg3) public view
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint80", "bytes10", "int80"]
    /// @param              arg2 ["uint256", "bytes32", "int256"]
    /// @param              arg3 ["uint256", "bytes32", "int256"]
    function Unresolved_fbde1732(address arg0, uint80 arg1, uint256 arg2, uint256 arg3) public view {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x80);
        require(arg0 - (address(arg0)));
        require(arg1 - (uint80(arg1)));
        require(arg2 > 0xffffffffffffffff);
        require(((msg.data.length - arg2) + 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc) < 0x40);
        require(arg3 > 0xffffffffffffffff);
        require(arg3 > 0xffffffffffffffff);
        require(((var_c + 0x40) > 0xffffffffffffffff) | ((var_c + 0x40) < var_c));
        uint256 var_c = var_c + 0x40;
        require(transient[uint248(keccak256(var_f))]);
        require(((var_c + 0x40) > 0xffffffffffffffff) | ((var_c + 0x40) < var_c));
        transient[uint248(keccak256(var_f))] = 0xa147fd8f7d12de6da66feedc6d64a11bd371e5471ee1018f11f9072ede67a0fa;
        require(arg2 + (arg2) > 0xffffffffffffffff);
        require(!(arg2) + (arg2));
        require(arg2 + (arg2) > 0xffffffffffffffff);
        require(arg2 + (arg2 + 0x20) > 0xffffffffffffffff);
        require(arg2 + (arg2) - (arg2 + (arg2 + 0x20)), CustomError_8bea10c5());
        require(msg.sender - (address(arg0)), CustomError_70d645e3());
        require(arg2 + (arg2) > 0xffffffffffffffff);
        if (0 < (arg2 + (arg2))) {
        }
    }
    
    /// @custom:selector    0x3ff20c8a
    /// @custom:signature   setPause(uint8 arg0) public payable
    /// @param              arg0 ["bool", "uint8", "bytes1", "int8"]
    function setPause(uint8 arg0) public payable {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (bytes1(arg0)));
        require(msg.sender - 0x622911384e7973439b8be305f5e3fc3c5736ede4, CustomError_39da1b10());
        require(bytes1(arg0) > 0x02, CustomError_39da1b10());
        require(bytes1(arg0) == (bytes1(store_c)), CustomError_0c6d42ae());
        store_c = (uint248(store_c)) | (bytes1(arg0));
        emit Event_d708418b(bytes1(store_c), bytes1(arg0));
    }
    
    /// @custom:selector    0x1e2eaeaf
    /// @custom:signature   extsload(bytes32 arg0) public view returns (uint256)
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    function extsload(bytes32 arg0) public view returns (uint256) {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        return store_d;
    }
    
    /// @custom:selector    0xf91e9c41
    /// @custom:signature   Unresolved_f91e9c41(uint256 arg0, uint16 arg1, uint16 arg2) public view
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    /// @param              arg1 ["uint16", "bytes2", "int16"]
    /// @param              arg2 ["uint16", "bytes2", "int16"]
    function Unresolved_f91e9c41(uint256 arg0, uint16 arg1, uint16 arg2) public view {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x60);
        require(arg0 - 11);
        require(arg1 - (uint16(arg1)));
        require(arg2 - (uint16(arg2)));
        require(msg.sender - 0x622911384e7973439b8be305f5e3fc3c5736ede4, CustomError_64b6051e());
        require(((var_c + 0x40) > 0xffffffffffffffff) | ((var_c + 0x40) < var_c), CustomError_64b6051e());
        uint256 var_c = var_c + 0x40;
        require(transient[uint248(keccak256(var_f))], CustomError_64b6051e());
        require(((var_c + 0x40) > 0xffffffffffffffff) | ((var_c + 0x40) < var_c), CustomError_64b6051e());
        transient[uint248(keccak256(var_f))] = 0x6228ff59018d12017a2bb81d4aaee1d839faeb61bb29b616b08aec1d954bdf7c;
        require(!(11 < 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec), CustomError_64b6051e());
        require(11 < 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec, CustomError_64b6051e());
    }
    
    /// @custom:selector    0x5dd9a4c5
    /// @custom:signature   setPoolFees(uint24 arg0, uint24 arg1) public payable
    /// @param              arg0 ["uint24", "bytes3", "int24"]
    /// @param              arg1 ["uint24", "bytes3", "int24"]
    function setPoolFees(uint24 arg0, uint24 arg1) public payable {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x40);
        require(arg0 - (uint24(arg0)));
        require(arg1 - (uint24(arg1)));
        if (msg.sender - 0x622911384e7973439b8be305f5e3fc3c5736ede4) {
            require(msg.sender - 0x622911384e7973439b8be305f5e3fc3c5736ede4, CustomError_3ee5aeb5());
            uint256 var_e = var_e + 0x40;
            require(((var_e + 0x40) > 0xffffffffffffffff) | ((var_e + 0x40) < var_e), CustomError_3ee5aeb5());
            require(transient[uint248(keccak256(var_h))], CustomError_3ee5aeb5());
            var_e = var_e + 0x40;
            transient[uint248(keccak256(var_h))] = 0xf88a537f51dde30be9a9960a2850ed980c30e495145525344f0f47ff82ba3b73;
            require(((var_e + 0x40) > 0xffffffffffffffff) | ((var_e + 0x40) < var_e), CustomError_3ee5aeb5());
            store_c = (uint24(arg0 << 0x90)) | (uint232(store_c));
            emit Event_0e7d070a(uint24(arg0));
            require(uint24(arg0) - (uint24(store_c >> 0x90)), CustomError_3ee5aeb5());
        }
    }
    
    /// @custom:selector    0xe24f0884
    /// @custom:signature   Unresolved_e24f0884(address arg0, uint256 arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    /// @param              arg2 ["uint256", "bytes32", "int256"]
    /// @param              arg3 ["address", "uint128", "bytes16", "int128"]
    /// @param              arg4 ["uint256", "bytes32", "int256"]
    /// @param              arg5 ["uint256", "bytes32", "int256"]
    function Unresolved_e24f0884(address arg0, uint256 arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5) public payable {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0xc0);
        require(arg0 - (address(arg0)));
        require(arg1 - arg1);
        require(arg2 - 11);
        require(arg3 - (address(arg3)));
        require(arg4 > 0xffffffffffffffff);
        require(arg4 > 0xffffffffffffffff);
        require(arg5 > 0xffffffffffffffff);
        require(arg5 > 0xffffffffffffffff);
        require(bytes1(store_c), CustomError_51bd770c());
        require(((var_d + 0x40) > 0xffffffffffffffff) | ((var_d + 0x40) < var_d), CustomError_46a14930());
        uint256 var_d = var_d + 0x40;
        require(transient[uint248(keccak256(var_f))], CustomError_46a14930());
        require(((var_d + 0x40) > 0xffffffffffffffff) | ((var_d + 0x40) < var_d), CustomError_46a14930());
        var_a = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        var_d = var_d + 0x40;
        transient[uint248(keccak256(var_f))] = var_a;
        require(!11, CustomError_46a14930());
        require(0, CustomError_46a14930());
        (bool success, bytes memory ret0) = address(0).getBidAndAskPrice(); // call
        require(!ret0.length, CustomError_46a14930());
        require(ret0.length > 0xffffffffffffffff, CustomError_46a14930());
        require(((var_d + (uint248((0x20 + (ret0.length + 0x1f)) + 0x1f))) > 0xffffffffffffffff) | ((var_d + (uint248((0x20 + (ret0.length + 0x1f)) + 0x1f))) < var_d), CustomError_46a14930());
        var_d = var_d + (uint248((0x20 + (ret0.length + 0x1f)) + 0x1f));
        require(!(0 < 0), CustomError_6b95e45f());
        require(!0, CustomError_6b95e45f());
        if (0x40 > ret0.length) {
        }
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
    
    /// @custom:selector    0x5cced60b
    /// @custom:signature   Unresolved_5cced60b(address arg0, uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5, uint256 arg6) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    /// @param              arg2 ["uint256", "bytes32", "int256"]
    /// @param              arg3 ["address", "uint128", "bytes16", "int128"]
    /// @param              arg4 ["address", "uint128", "bytes16", "int128"]
    /// @param              arg5 ["address", "uint128", "bytes16", "int128"]
    /// @param              arg6 ["uint256", "bytes32", "int256"]
    function Unresolved_5cced60b(address arg0, uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5, uint256 arg6) public payable {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0xe0);
        require(arg0 - (address(arg0)));
        require(arg1 - arg1);
        require(arg2 - 11);
        require(arg3 - (address(arg3)));
        require(arg4 - (address(arg4)));
        require(arg5 - (address(arg5)));
        require(arg6 > 0xffffffffffffffff);
        require(arg6 > 0xffffffffffffffff);
        var_b = 0x20;
        require(((var_c + 0x40) > 0xffffffffffffffff) | ((var_c + 0x40) < var_c), CustomError_a5724489());
        uint256 var_c = var_c + 0x40;
        require(transient[uint248(keccak256(var_f))], CustomError_a5724489());
        require(((var_c + 0x40) > 0xffffffffffffffff) | ((var_c + 0x40) < var_c), CustomError_a5724489());
        var_c = var_c + 0x40;
        transient[uint248(keccak256(var_f))] = 0xbaf2b3653c77cf277ac36a174e0624557a6829660e787388cf9abd21ceb18a44;
        require(!11, CustomError_a5724489());
        require(!(address(arg4) < (address(arg5))), CustomError_a5724489());
        require(!(address(arg4)), CustomError_a5724489());
        address var_j = address(msg.sender);
        require(((var_c + (uint248((((0x1f + (arg6)) + (var_c + 0x0144) + 0x20) - var_c) + 0x1f))) > 0xffffffffffffffff) | ((var_c + (uint248((((0x1f + (arg6)) + (var_c + 0x0144) + 0x20) - var_c) + 0x1f))) < var_c), CustomError_a5724489());
        var_c = var_c + (uint248((((0x1f + (arg6)) + (var_c + 0x0144) + 0x20) - var_c) + 0x1f));
        require(!0, CustomError_a5724489());
        require(!0, CustomError_a5724489());
        require(!(0 < 0x04), CustomError_a5724489());
        require(!(0 < 0x08), CustomError_a5724489());
        require(!0 < 0x06);
        require(0x06 == 0);
        require(!0);
        (bool success, bytes memory ret0) = address(0).Unresolved_6312d54a(var_j); // call
        require(!ret0.length);
        require(var_w);
        require(var_w < 0x20, CustomError_a59c2303());
        require(uint32(var_b) - (uint32(var_f)), CustomError_a59c2303());
        require(ret0.length > 0xffffffffffffffff, CustomError_3c82bb14());
        require(((var_c + (uint248((0x20 + (ret0.length + 0x1f)) + 0x1f))) > 0xffffffffffffffff) | ((var_c + (uint248((0x20 + (ret0.length + 0x1f)) + 0x1f))) < var_c), CustomError_3c82bb14());
        var_c = var_c + (uint248((0x20 + (ret0.length + 0x1f)) + 0x1f));
        require(var_c.length, CustomError_3c82bb14());
        if (0x04 == 0) {
        }
        if (!0 < 0x02) {
            require(!(0 < 0x02), CustomError_df42d72e());
        }
        require(0x01 == 0, CustomError_df42d72e());
        require(!0xb1e4142db0257c35ccd2105699d1cc7250179117, CustomError_df42d72e());
        (bool success, bytes memory ret0) = address(0xb1e4142db0257c35ccd2105699d1cc7250179117).Unresolved_6312d54a(var_j); // call
        require(!ret0.length, CustomError_a5724489());
        require(ret0.length > 0xffffffffffffffff, CustomError_a5724489());
        require(((var_c + (uint248((0x20 + (ret0.length + 0x1f)) + 0x1f))) > 0xffffffffffffffff) | ((var_c + (uint248((0x20 + (ret0.length + 0x1f)) + 0x1f))) < var_c), CustomError_a5724489());
        if (!(address(arg4) * (address(arg5)) / (address(arg4)) == (address(arg5))) | (!address(arg4))) {
            require(!(address(arg4) * (address(arg5)) / (address(arg4)) == (address(arg5)) | (!address(arg4))), CustomError_6b95e45f());
            require(!(address(arg4) * (address(arg5)) > 0x01), CustomError_6b95e45f());
            require(!(address(arg4) * (address(arg5)) < 0x0100000000000000000000000000000000), CustomError_6b95e45f());
            require(!((address(arg4) * (address(arg5)) >> 0x80) < 0x010000000000000000), CustomError_6b95e45f());
            require(!(((address(arg4) * (address(arg5)) >> 0x80) >> 0x40) < 0x0100000000), CustomError_6b95e45f());
            require(!((((address(arg4) * (address(arg5)) >> 0x80) >> 0x40) >> 0x20) < 0x010000), CustomError_6b95e45f());
            require(!(((((address(arg4) * (address(arg5)) >> 0x80) >> 0x40) >> 0x20) >> 0x10) < 0x0100), CustomError_6b95e45f());
            require(!((((((address(arg4) * (address(arg5)) >> 0x80) >> 0x40) >> 0x20) >> 0x10) >> 0x08) < 0x10), CustomError_6b95e45f());
            require(!(((((((address(arg4) * (address(arg5)) >> 0x80) >> 0x40) >> 0x20) >> 0x10) >> 0x08) >> 0x04) < 0x04), CustomError_6b95e45f());
            require(!0xc0000000000000000000000000000000, CustomError_6b95e45f());
        }
        require(((address(arg5) * 0x010000000000000000) % 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) - (address(arg5) * 0x010000000000000000) == (((address(arg5) * 0x010000000000000000) % 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) < (address(arg5) * 0x010000000000000000)), CustomError_6b95e45f());
        require(!(address(arg4) * (address(arg5)) > (((address(arg5) * 0x010000000000000000) % 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) - (address(arg5) * 0x010000000000000000) - (((address(arg5) * 0x010000000000000000) % 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) < (address(arg5) * 0x010000000000000000)))), CustomError_6b95e45f());
    }
    
    /// @custom:selector    0x5d7cef55
    /// @custom:signature   Unresolved_5d7cef55(uint256 arg0, uint256 arg1, uint256 arg2, uint256 arg3, address arg4) public payable
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    /// @param              arg2 ["uint256", "bytes32", "int256"]
    /// @param              arg3 ["uint256", "bytes32", "int256"]
    /// @param              arg4 ["address", "uint160", "bytes20", "int160"]
    function Unresolved_5d7cef55(uint256 arg0, uint256 arg1, uint256 arg2, uint256 arg3, address arg4) public payable {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0xa0);
        require(arg4 - (address(arg4)));
        require(msg.sender - 0x622911384e7973439b8be305f5e3fc3c5736ede4);
        require(((var_c + 0x40) > 0xffffffffffffffff) | ((var_c + 0x40) < var_c));
        uint256 var_c = var_c + 0x40;
        require(transient[uint248(keccak256(var_f))]);
        require(((var_c + 0x40) > 0xffffffffffffffff) | ((var_c + 0x40) < var_c));
        var_c = var_c + 0x40;
        transient[uint248(keccak256(var_f))] = 0xd1d11922b700459ced204b3743fc4c79f65983a27e1363601f00585467c79c07;
        require(!arg0 + arg1);
        require(!arg0 + arg1);
        address var_j = address(this);
        (bool success, bytes memory ret0) = address(0x0bd7d308f8e1639fab988df18a8011f41eacad73).Unresolved_70a08231(var_j); // staticcall
        require(!(0 == 0x01) | !0);
        require((0 - (address(store_e))) > 0);
        require(0x20 > ret0.length);
        require(((var_c + 0x20) > 0xffffffffffffffff) | ((var_c + 0x20) < var_c));
        var_c = var_c + 0x20;
        require(((var_c + 0x20) - var_c) < 0x20);
    }
    
    /// @custom:selector    0x97962ef9
    /// @custom:signature   Unresolved_97962ef9(address arg0, uint80 arg1, uint256 arg2, uint256 arg3, uint256 arg4) public view
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint80", "bytes10", "int80"]
    /// @param              arg2 ["uint256", "bytes32", "int256"]
    /// @param              arg3 ["uint256", "bytes32", "int256"]
    /// @param              arg4 ["uint256", "bytes32", "int256"]
    function Unresolved_97962ef9(address arg0, uint80 arg1, uint256 arg2, uint256 arg3, uint256 arg4) public view {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0xa0);
        require(arg0 - (address(arg0)));
        require(arg1 - (uint80(arg1)));
        require(arg2 > 0xffffffffffffffff);
        require(((msg.data.length - arg2) + 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc) < 0x40);
        require(arg3 > 0xffffffffffffffff);
        require(arg3 > 0xffffffffffffffff);
        require(arg4 > 0xffffffffffffffff);
        require(arg4 > 0xffffffffffffffff);
        require(((var_c + 0x40) > 0xffffffffffffffff) | ((var_c + 0x40) < var_c));
        uint256 var_c = var_c + 0x40;
        require(transient[uint248(keccak256(var_f))]);
        require(((var_c + 0x40) > 0xffffffffffffffff) | ((var_c + 0x40) < var_c));
        transient[uint248(keccak256(var_f))] = 0x3ff35dbce7a07ce455b128890d383c554afbc1b07cf7390a13e2d602a38c1a0a;
        require(arg2 + (arg2) > 0xffffffffffffffff);
        require(!(arg2) + (arg2));
        require(arg2 + (arg2) > 0xffffffffffffffff);
        require(arg2 + (arg2 + 0x20) > 0xffffffffffffffff);
        require(arg2 + (arg2) - (arg2 + (arg2 + 0x20)), CustomError_8bea10c5());
        require(arg2 + (arg2) > 0xffffffffffffffff);
        if (0 < (arg2 + (arg2))) {
        }
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
    
    /// @custom:selector    0x372aa224
    /// @custom:signature   setPriceProvider(address arg0) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function setPriceProvider(address arg0) public payable {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        require(msg.sender - 0x622911384e7973439b8be305f5e3fc3c5736ede4, CustomError_0c6d42ae());
        store_a = (address(arg0)) | (uint96(store_a));
        emit PriceProviderUpdated(address(arg0));
    }
}