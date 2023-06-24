// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

// Data types: Values and References
// Array is a collections of References

contract DataTypes {
    bool public b = true;
    uint u = 123; // uint -> [0, ...2^256 - 1]

    int i = -123; // supports both +ve and -ve numbers [-2^256.., 0, ...2^256]

    // finding max/min values for a data type
    int public maxInt = type(int).max;
    int public minInt = type(int).min;

    address addr = 0xCCFD7490d9F4a44d3664CDCF5E2721863C507e81;
    bytes32 b32 = "some 32 bytes address"; // related to crypto hashed address gen by solidity
    bytes32 name;   // short name (up to 32 bytes)
}