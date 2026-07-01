// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingsAndStructs {
    
    // ENUM: Strict status options
    enum OrderStatus { Pending, Shipped, Delivered }

    // STRUCT: Custom data object layout
    struct Product {
        string name;
        uint price;
        OrderStatus status;
    }

    // MAPPING: Lookup database (ID => Product Object)
    mapping(uint => Product) public catalog;

    // FUNCTION: Add an item to the mapping database
    function addProduct(uint _id, string memory _name, uint _price) public {
        catalog[_id] = Product(_name, _price, OrderStatus.Pending);
    }

    // FUNCTION: Update the shipping status of an item
    function shipProduct(uint _id) public {
        catalog[_id].status = OrderStatus.Shipped;
    }
}
