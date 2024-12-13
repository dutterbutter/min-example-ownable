// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin-v5/contracts/access/Ownable.sol";

contract Counter is Ownable {
    uint256 public number;

    constructor() Ownable(msg.sender) {}

    function setNumber(uint256 newNumber) external onlyOwner {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
