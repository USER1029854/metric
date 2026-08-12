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
    uint256 public constant MAX_PROTOCOL_FEE = 500000;
    
    address public poolDeployer;
    address public owner;
    address public pendingOwner;
    
    event PoolDeployerSet(address);
    event Event_05952273();
    error OwnableUnauthorizedAccount(address);
    event TokensCollected(address, address, uint256);
    event OwnershipTransferred(address, address);
    
    /// @custom:selector    0x715018a6
    /// @custom:signature   renounceOwnership() public payable
    function renounceOwnership() public payable {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0);
        require(msg.sender - (address(owner)), CustomError_118cdaa7());
        pendingOwner = uint96(pendingOwner);
        owner = uint96(owner);
        emit OwnershipTransferred(address(owner), 0);
    }
    
    /// @custom:selector    0x79ba5097
    /// @custom:signature   acceptOwnership() public payable
    function acceptOwnership() public payable {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0);
        require(address(pendingOwner) - msg.sender, CustomError_118cdaa7());
        address var_b = msg.sender;
        pendingOwner = uint96(pendingOwner);
        owner = var_b | (uint96(owner));
        emit OwnershipTransferred(address(owner), msg.sender);
    }
    
    /// @custom:selector    0x237f4b66
    /// @custom:signature   collectTokens(address arg0, address arg1, uint256 arg2) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg2 ["uint256", "bytes32", "int256"]
    function collectTokens(address arg0, address arg1, uint256 arg2) public payable {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x60);
        require(arg0 - (address(arg0)));
        require(arg1 - (address(arg1)));
        require(msg.sender - (address(owner)), CustomError_118cdaa7());
        address var_d = address(this);
        (bool success, bytes memory ret0) = address(arg0).Unresolved_70a08231(var_d); // staticcall
        require(arg2, CustomError_5274afe7());
        require(arg2, CustomError_5274afe7());
        var_a = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
        var_b = address(arg1);
        (bool success, bytes memory ret0) = address(arg0).Unresolved_a9059cbb(var_b); // call
        require(!(success & (var_a == 0x01)), CustomError_5274afe7());
        emit TokensCollected(address(arg0), address(arg1), arg2);
        require(bytes1(!success));
        var_f = var_f;
        require(!((!ret0.length) & (address(arg0).code.length) & (success)), CustomError_5274afe7());
        emit TokensCollected(address(arg0), address(arg1), arg2);
        require(0x20 > ret0.length);
        require(((var_f + 0x20) > 0xffffffffffffffff) | ((var_f + 0x20) < var_f));
        uint256 var_f = var_f + 0x20;
        require(((var_f + 0x20) - var_f) < 0x20);
        require(arg2, CustomError_5274afe7());
        require(var_f.length, CustomError_5274afe7());
        var_a = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
        var_b = address(arg1);
        (bool success, bytes memory ret0) = address(arg0).many_msg_babbage(var_b); // call
        require(!(success & (var_a == 0x01)), CustomError_5274afe7());
        var_f = var_f;
        emit TokensCollected(address(arg0), address(arg1), var_f.length);
        require(bytes1(!success));
        var_f = var_f;
        require(!((!ret0.length) & (address(arg0).code.length) & (success)), CustomError_5274afe7());
        emit TokensCollected(address(arg0), address(arg1), var_f.length);
    }
    
    /// @custom:selector    0xe3c3d650
    /// @custom:signature   Unresolved_e3c3d650(uint24 arg0) public payable
    /// @param              arg0 ["uint24", "bytes3", "int24"]
    function Unresolved_e3c3d650(uint24 arg0) public payable {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (uint24(arg0)));
        require(msg.sender - (address(owner)), CustomError_118cdaa7());
        require(uint24(arg0) > 0x07a120, CustomError_499fddb1());
        poolDeployer = (uint232(poolDeployer)) | (uint24(arg0 << 0xa0));
        emit Event_05952273(uint24(poolDeployer >> 0xa0), uint24(arg0));
    }
    
    /// @custom:selector    0x1aa3e95d
    /// @custom:signature   setPoolDeployer(address arg0) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    function setPoolDeployer(address arg0) public payable {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 - (address(arg0)));
        require(msg.sender - (address(owner)), CustomError_118cdaa7());
        require(address(poolDeployer), CustomError_97bdde6a());
        poolDeployer = (address(arg0)) | (uint96(poolDeployer));
        emit PoolDeployerSet(address(arg0));
    }
    
    /// @custom:selector    0x9362624a
    /// @custom:signature   Unresolved_9362624a(uint256 arg0, address arg1, address arg2, uint104 arg3, uint104 arg4, uint104 arg5, uint256 arg6, uint24 arg7, uint256 arg8, uint256 arg9, uint256 arg10) public view
    /// @param              arg0 ["uint256", "bytes32", "int256"]
    /// @param              arg1 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg2 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg4 ["uint104", "bytes13", "int104"]
    /// @param              arg5 ["uint104", "bytes13", "int104"]
    /// @param              arg6 ["uint104", "bytes13", "int104"]
    /// @param              arg7 ["uint256", "bytes32", "int256"]
    /// @param              arg10 ["uint24", "bytes3", "int24"]
    /// @param              arg12 ["uint256", "bytes32", "int256"]
    /// @param              arg13 ["uint256", "bytes32", "int256"]
    /// @param              arg14 ["uint256", "bytes32", "int256"]
    function Unresolved_9362624a(uint256 arg0, address arg1, address arg2, uint104 arg3, uint104 arg4, uint104 arg5, uint256 arg6, uint24 arg7, uint256 arg8, uint256 arg9, uint256 arg10) public view {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x20);
        require(arg0 > 0xffffffffffffffff);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + (msg.data.length - arg0)) < 0x0200);
        require(!address(poolDeployer));
        require(arg0  - (address(arg0 )));
        require(msg.data[arg0 + 0x24] - (address(msg.data[arg0 + 0x24])));
        require(msg.data[arg0 + 0x44] - (address(msg.data[arg0 + 0x44])));
        require(msg.data[arg0 + 0x84] - (uint104(msg.data[arg0 + 0x84])));
        require(msg.data[arg0 + 0xa4] - (uint104(msg.data[arg0 + 0xa4])));
        require(msg.data[arg0 + 0xc4] - (uint104(msg.data[arg0 + 0xc4])));
        require(msg.data[arg0 + 0xe4] - (msg.data[arg0 + 0xe4]));
        require(msg.data[arg0 + 0x0144] - (uint24(msg.data[arg0 + 0x0144])));
        require(msg.data[arg0 + 0x0184] - 11);
        require(arg0 + (msg.data[arg0 + 0x01a4]) > 0xffffffffffffffff);
        require(arg0 + (msg.data[arg0 + 0x01a4]) > 0x07ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
        require(((var_f + (uint248((((var_f + 0x20) + (arg0 + (msg.data[arg0 + 0x01a4]) << 0x05) + 0x40) - var_f) + 0x1f))) > 0xffffffffffffffff) | ((var_f + (uint248((((var_f + 0x20) + (arg0 + (msg.data[arg0 + 0x01a4]) << 0x05) + 0x40) - var_f) + 0x1f))) < var_f));
        uint256 var_f = var_f + (uint248((((var_f + 0x20) + (arg0 + (msg.data[arg0 + 0x01a4]) << 0x05) + 0x40) - var_f) + 0x1f));
        require(arg0 + (msg.data[arg0 + 0x01c4]) > 0xffffffffffffffff);
        require(arg0 + (msg.data[arg0 + 0x01c4]) > 0x07ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
        require(((var_f + (uint248((((var_f + 0x20) + (arg0 + (msg.data[arg0 + 0x01c4]) << 0x05) + 0x40) - var_f) + 0x1f))) > 0xffffffffffffffff) | ((var_f + (uint248((((var_f + 0x20) + (arg0 + (msg.data[arg0 + 0x01c4]) << 0x05) + 0x40) - var_f) + 0x1f))) < var_f));
    }
    
    /// @custom:selector    0x6c1104e5
    /// @custom:signature   collectETH(address arg0, uint256 arg1) public payable
    /// @param              arg0 ["address", "uint160", "bytes20", "int160"]
    /// @param              arg1 ["uint256", "bytes32", "int256"]
    function collectETH(address arg0, uint256 arg1) public payable {
        require(msg.value);
        require((0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc + msg.data.length) < 0x40);
        require(arg0 - (address(arg0)));
        require(msg.sender - (address(owner)), CustomError_118cdaa7());
        require(arg1, "ETH transfer failed");
        require(arg1, "ETH transfer failed");
        (bool success, bytes memory ret0) = address(arg0).transfer(arg1);
        require(!ret0.length, "ETH transfer failed");
        emit TokensCollected(0, address(arg0), arg1);
        require(ret0.length > 0xffffffffffffffff, "ETH transfer failed");
        require(((var_g + (uint248((0x20 + (ret0.length + 0x1f)) + 0x1f))) > 0xffffffffffffffff) | ((var_g + (uint248((0x20 + (ret0.length + 0x1f)) + 0x1f))) < var_g), "ETH transfer failed");
        require(address(this).balance, "ETH transfer failed");
        (bool success, bytes memory ret0) = address(arg0).transfer(address(this).balance);
        require(!ret0.length, "ETH transfer failed");
        emit TokensCollected(0, address(arg0), address(this).balance);
        require(ret0.length > 0xffffffffffffffff);
        require(((var_g + (uint248((0x20 + (ret0.length + 0x1f)) + 0x1f))) > 0xffffffffffffffff) | ((var_g + (uint248((0x20 + (ret0.length + 0x1f)) + 0x1f))) < var_g));
    }
}