// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.10;

/*
    In the context of Ethereum, "gas" refers to the unit that measures the amount of computational effort required to execute operations or run transactions on the Ethereum network.
    Each operation or transaction consumes a certain amount of gas, and users must pay for this gas using Ether (ETH).
    Gas is a way to prevent network abuse and allocate resources fairly.
*/

contract Gas {
    uint private i = 0;

    /*
        Using up all of the gas that you send causes your transaction to fail.
        State changes are undone.
        Gas spent are not refunded.
    */

    function forever() private {
        // While loop to spend all the gas & transaction fails.
        while(true) {
            i += 1;
        }
    }

    /*
        Gas Price:
        Gas price is the amount of Ether a user is willing to pay per unit of gas.
        It determines the transaction fee for miners who include the transaction in a block.
        Higher gas prices incentivize miners to prioritize the transaction.
    */

    /*
        Gas Limit:
        The gas limit is the maximum amount of gas units that a user is willing to spend on a particular transaction or operation.
        It is set by the sender of the transaction.
        The gas limit represents the maximum computational effort that can be consumed for the transaction to be processed.
    */

    /*
        Gas Cost:
        Gas cost is the total cost of a transaction, calculated as the product of gas used and gas price.
        It represents the amount of Ether paid to miners for processing the transaction.
    */

    function gasPrice() external payable {
        // Check Gas Price
        require(tx.gasprice >= 100 gwei, "Gas Price too low");
    }
}