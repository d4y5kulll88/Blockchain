// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.10;

contract GlobalVariableExample {
    // State variables
    address public owner;
    uint public contractCreationTime;
    uint public someValue;

    // Event to log message
    event LogMessage(string message);

    // Contructor
    constructor (uint _someValue) {
        owner = msg.sender;
        contractCreationTime = block.timestamp;
        someValue = _someValue;

        emit LogMessage("Contract deployed succesfully!");
    }

    // Function that uses various global variables
    function getInfo() external view returns(
        address sender,
        bytes calldata data,
        uint blockNumber,
        uint timeStamp,
        uint difficulty,
        address coinbase,
        uint gasLimit,
        address origin,
        uint gasRemaining,
        address contractAddress
    )
    {
        sender = msg.sender;
        data = msg.data;
        blockNumber = block.number;
        timeStamp = block.timestamp;
        difficulty = block.difficulty;
        coinbase = block.coinbase;
        gasLimit = block.gaslimit;
        origin = tx.origin;
        gasRemaining = gasleft();
        contractAddress = address(this);
    }

}