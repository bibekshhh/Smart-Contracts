// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract Enums {
    enum ShirtSize {SMALL, MEDIUM, LARGE}
    ShirtSize private choice;

    ShirtSize constant defaultChoice = ShirtSize.MEDIUM;

    function setLarge() public {
        choice = ShirtSize.LARGE;
    }

    function getChoice() public view returns (ShirtSize) {
        return choice;
    }

    function getDefaultChoice() public pure returns (ShirtSize){
        return defaultChoice;
    }
}