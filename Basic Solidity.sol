// SPDX-License-Identifier: MIT

// Compiler version must be greater than or equal to 0.8.10 & less than 0.9.0
pragma solidity ^0.8.10;

/*
Access Modifiers:
    Use public for variables or functions you want to expose to the world.
    Use internal for variables or functions that should only be accessible within the current contract or its derived contracts.
    Use external for functions that are expected to be called from outside the contract. (disallow internal access)
    Use private for variables or functions that are only needed internally and should not be accessed by derived contracts.
*/

/*
State Mutability Modifiers:
    Pure:
    In Solidity, a function that doesn’t read or modify the variables of the state is called a pure function.
    It does not perform any actions that would alter the state of the blockchain.
    It can only use local variables that are declared in the function and the arguments that are passed to the function to compute or return a value.

    View:
    Similar to pure, view is used for functions that do not modify the state but can read the state.
    It is commonly used for functions that retrieve information from the contract.
        View functions in Solidity are designed to retrieve and return data from the blockchain without modifying the state of the contract.
        These functions are used to provide read-only access to the contract’s state variables.
        By declaring a function as “view,” you are promising that the function will not change the state of the contract or any variables it accesses.

    Payable
    Used for functions that can receive Ether (ETH) as part of a transaction.
    It allows the contract to accept incoming Ether, and the function can perform state-changing operations.
*/

contract HelloWorld1 {
    // State variable
    string _greet = "First Hello World Contract: Greetings from state variable, I am a state variable.";

    // Access Modifiers: Public, Internal (Default), External, Private
    // State Mutability Modifiers: Pure, View, Payable
    function sayHello() public pure returns (string memory) {
        return "First Hello World Contract: Blockchain says Hello!";
    }
}

contract HelloWorld2 {
    // State variable
    string _greet = "Second Hello World Contract: Greetings from state variable, I am a state variable.";

    // Access Modifiers: Public, Internal (Default), External, Private
    // State Mutability Modifiers: Pure, View, Payable
    function sayHello() public pure returns (string memory) {
        return "Second Hello World Contract: Blockchain says Hello!";
    }
}
