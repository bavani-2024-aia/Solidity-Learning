// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CustomModifiers {
    // State variables stored permanently on the ledger 
    address public owner;
    uint public price = 100;

    // CONSTRUCTOR: Runs exactly ONCE when the contract is deployed 
    constructor() {
        
        owner = msg.sender;
    }

    // CUSTOM MODIFIER: Acts as a security guard checking conditions first
    modifier onlyOwner() {
        // If the caller is not the owner, stop and revert the transaction 
        require(msg.sender == owner, "Error: You are not the contract owner!");
        _; // The merge point
    }

    
    function updatePrice(uint _newPrice) public onlyOwner {
        price = _newPrice;
    }
}
