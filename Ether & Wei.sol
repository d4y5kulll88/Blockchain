// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.10;

// Ether & Wei
// Transactions are paid with ether.
// Similar to how one dollar is equal to 100 cent, one ether is equal to 10^18 wei.


contract EtherUnits {
    // 1 Wei is equal to 1
    uint private oneWei = 1 wei;

    bool private isOneWei = oneWei == 1 ether;
    bool private isTwoWei = 2 * 1 wei == 2;


    // 1 Gwei is equal to 1,000,000,000 wei
    // Gwei is a smaller denomination than Ether and is often used to express gas prices.
    uint private oneGwei = 1e9 wei;

    bool private isOneGwei = oneGwei == 1 gwei;
    bool private isTwoGwei = 2 * 1 gwei == 2e9 wei;


    // 1 Ether is equal to 10^18 wei
    uint private oneEther = 1 ether;

    bool private isOneEther = oneEther == 1e18 wei;
    bool private isFiveEther = 5 * 1 ether == 2e18 wei;
}
