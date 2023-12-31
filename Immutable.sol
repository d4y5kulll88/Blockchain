// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.10;

// Immutable variables are like constants.
// Values of immutable variables can be set inside the constructor but cannot be modified afterwards.

contract ImmutableExample {
    // Declaring an immutable state variable, coding convention to uppercase constant variables
    // While writing this code immutable is not supported for string
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    constructor(uint _myUINT) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUINT;
    }
}