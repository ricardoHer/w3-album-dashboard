// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

contract Utility {
    address public owner;

    event errorEvent(string errorEvent_Message);

    constructor(address _owner) {
        owner = _owner;
    }

   modifier onlyOwner() {
        if (msg.sender == owner) {
            _;
        } else {
            emit errorEvent("Only the owner can call this function");
        }
    }
}

