// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyProfile {
    // 1. Storing text

    string public userName = "Alice";

    // 2. Storing a true/false status
    bool public isVerified = true;

    // 3. Storing a positive number (tokens count)
    uint public tokenCount = 150;

    // 4. Storing a number that could go below zero (profit/loss tracker)
    int public netProfit = -20;

    // 5. Storing an account number
    address public userWallet = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
}
