// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.10;

// This contract receives some ether & holds some balance
contract PayMe {
    receive() external payable{}

    function getBalance() public view returns (uint) {
        // Address of the current contract
        return address(this).balance;
    }

    function emptyFunds(address recipient) public {
        recipient.call{value: address(this).balance}("");
    }
}


// Execution steps in Remix (Putting funds into the contract)
    // 1. Initially the funds will be 0, we can check by clicking getBalance.
    // 2. Select the amount (Ether, Wew, etc) to send. Keep an eye on the Account Balance.
    // 3. Click on Transact to transfer the amount to the contract. Verify the transaction was completed.


// Sending the Funds back to the account from the Contract
    // 1. Copy the account address & paste into the empty funds box
    // 2. Click to send the amount back to the account address.