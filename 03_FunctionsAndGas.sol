// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionsAndGas {
    // State variable stored permanently on the blockchain network //
    uint public storedNumber = 10;

    // READ FUNCTION //
    // It only looks at the data, it does not alter anything.
    function getNumber() public view returns (uint) {
        return storedNumber;
    }

    // WRITE FUNCTION //
    // It changes the state variable, which requires miner processing power.
    function setNumber(uint _newNumber) public {
        storedNumber = _newNumber;
    }
}
