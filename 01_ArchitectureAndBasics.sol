// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; // Tells the compiler which Solidity version to use //

contract ArchitectureAndBasics {
    // 1. STATE VARIABLES: Permanent storage on the blockchain network //
    string public contractPurpose = "Learning Solidity Architecture";
    address public contractDeployer;

    // 2. CONSTRUCTOR: Runs exactly ONCE when the contract is deployed //
    constructor() {
        // 'msg.sender' is a global variable capturing who deployed this //
        contractDeployer = msg.sender;
    }

    // 3. READ FUNCTION: Free to call, costs NO GAS because it just reads data //
    function getContractInfo() public view returns (string memory, address) {
        return (contractPurpose, contractDeployer);
    }
}
