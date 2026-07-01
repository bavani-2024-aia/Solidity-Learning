// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArraysAndOperations {
    // 1. ARRAY DECLARATIONS
    uint[] public array1; // Dynamic integer array (can grow/shrink) 
    string[] public array2 = ["apple", "banana", "grapes"]; // Dynamic initialized array 
    uint[10] public array3; // Fixed-size array (holds exactly 10 items) 
    string[10] public array4; // Fixed-size array (holds exactly 10 items) 

    // 2. ARRAY OPERATIONS // 
    
    // RETURN ARRAY: Returns the entire dynamic integer array
    function getFullList() public view returns (uint[] memory) {
        return array1;
    }

    // LENGTH: Checks how many items are currently in the array 
    function getLength() public view returns (uint) {
        return array1.length;
    }

    // PUSH: Appends a new number to the end of the dynamic array 
    function addElement(uint _number) public {
        array1.push(_number);
    }

    // POP: Removes the absolute last element from the array 
    function removeLastElement() public {
        array1.pop();
    }

   
    function clearElement(uint _index) public {
        delete array1[_index];
    }
}
