// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.10;

contract SimpleStorage {
    // State variable to store a number
    uint private num;
    string private name;

    function setState(uint _num, string calldata _name) private {
        num = _num;
        name = _name;
    }

    function getState() private view returns(uint, string memory) {
        return (num, name);
    }
}