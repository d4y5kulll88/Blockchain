// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.10;

// State Variable:
// Declared inside a contract but outside the functions & stored on the blockchain


// Local Variable:
// The local variable is only visible inside the function in which it is declared & not stored on the blockchain


// Global Variable:
// (provides information about the blockchain)


contract Variables {
    // State variables are variables stored on the blockshain
    string public text = "Solidity Variables!";
    uint public number = 45;


    // Contants: Their value is hard coded and using constants can save gas cost
    address public constant myAddress = 0x742d35Cc6634C0532925a3b844Bc454e4438f44e;
    uint public constant myNumber = 1337;


    // To better understand Pure vs View, try changing the State Mutability Modifier
    function doSomething() public view {
        // Local variables are not saved to the blockshain
        uint i = 356;
        bool myBool = false;


        // Global variables
        uint timestamp = block.timestamp;   // Current block timestamp
        address sender = msg.sender;        // Address of the caller
    }
}