// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.10;

contract Loop {
    function loop1() public pure {
        // For Loop
        for (uint256 index = 0; index < 20; index++) {
            if (index == 3) {
                continue;
            }

            if (index == 5) {
                break;
            }
        }


        // While Loop
        uint j;
        while (j < 10) {
            j++;
        }
    }
}
