// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract AlienPet {
    uint256 public supply;
    mapping(address => uint256) public vault;

    event Update(address indexed owner, uint256 val);

    function mint() external {
        supply++;
        uint256 res = uint256(keccak256(abi.encodePacked(block.timestamp, msg.sender, supply))) % 100;
        vault[msg.sender] += (res + 1);
        emit Update(msg.sender, res + 1);
    }

    function getVault(address user) external view returns (uint256) {
        return vault[user];
    }
}
