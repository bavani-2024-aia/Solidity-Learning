// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SolidityDataTypes {
    // 1. STRING: Stores text characters like words or sentences //
    string public userName = "Alice";

    // 2. BOOL: Stores true or false flags (boolean logic) //
    bool public isAccountActive = true;

    // 3. UINT: Unsigned Integer (Positive whole numbers only, no minus signs) //
    uint public userAge = 21; 

    // 4. INT: Integer (Can store both positive and negative numbers) //
    int public dailyProfitOrLoss = -50; 

    // 5. ADDRESS: Stores a 20-byte Ethereum wallet account identity //
    address public walletId = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // READ FUNCTION: Returns profile variables for checking //
    function checkProfileData() public view returns (string memory, uint, bool) {
        return (userName, userAge, isAccountActive);
    }
}
