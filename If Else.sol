// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.10;

contract IfElseBlock {
    address public owner;

    enum Status {
        Pending,
        Approved,
        Rejected
    }

    mapping(address => uint) public balances;

    // Constructor
    constructor() {
        owner = msg.sender;
    }

    function simpleFunction(uint x) public pure returns (uint) {
        if (x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }


    // Ternary Function
    function ternary(uint _x) external pure returns (bool) {
        return _x < 10 ? true : false;
    }


    // Because, I made the below functions private, they will not be visible in remix after deployment.
    function checkEvenOdd(uint num) private pure returns (string memory) {
        if (num % 2 == 0) {
            return "Number is Even.";
        } else {
            return "Number is Odd.";
        }
    }


    function isOwner() public view returns (string memory) {
        if (owner != msg.sender) {
            return "You are not the Owner.";
        } else {
            return "You are the Owner.";
        }
    }

    // Nested If Else
    function compareStrings(string memory a, string memory b) public pure returns (string memory) {

        // bytes(a).length converts the string a into a byte array & retrieves the length of the byte array.
        if (bytes(a).length == bytes(b).length) {
            if (keccak256(abi.encodePacked(a)) == keccak256(abi.encodePacked(b))) {
                return "Strings are equal.";
            } else {
                return "Strings are not equal.";
            }
        } else {
            return "Strings have different lengths.";
        }
    }


    // If Else with Enum type
    function getStatusMessage(Status status) public pure returns (string memory) {
        if (status == Status.Approved) {
            return "Application is Approved.";
        } else if (status == Status.Pending) {
            return "Application is Pending.";
        } else {
            return "Application is Rejected.";
        }
    }


    // If Else with Enum type
    function checkBalance(address account) public view returns (string memory) {
        if (balances[account] > 0) {
            return "You have positive balance.";
        } else {
            return "Your balance is zero or negative.";
        }
    }
}