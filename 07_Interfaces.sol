// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// INTERFACE: The target contract's functional blueprint layout
interface ITargetContract {
    function getStoredValue() external view returns (uint);
    function updateValue(uint _value) external;
}

contract InterfaceInteraction {
    
    // FUNCTION: Reads data from a completely separate contract address
    function readFromExternalContract(address _targetAddress) public view returns (uint) {
        ITargetContract target = ITargetContract(_targetAddress);
        return target.getStoredValue();
    }

    // FUNCTION: Writes data to a completely separate contract address
    function writeToExternalContract(address _targetAddress, uint _newValue) public {
        ITargetContract target = ITargetContract(_targetAddress);
        target.updateValue(_newValue);
    }
}
