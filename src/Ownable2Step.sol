// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";

contract Counter is Ownable2Step {
    uint256 public number;

    constructor() Ownable(msg.sender) {}

    function setNumber(uint256 newNumber) external onlyOwner {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
