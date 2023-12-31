// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Array {
    uint[] public arr0;

    // In Solidity, an array should contain elements of the same data type.
    uint[] public arr1 = [1, 0, 23, 400, 509];

    string[3] public arr2 = ["Apple", "Ball", "Cat"];

    // Get array elements by index
    function getArray(uint _i) public view returns (uint) {
        return arr1[_i];
    }

    // Solidity can return an entire array, but it should be avoided for arrays that can grow indefinitely
    function getAllArrayElements() public view returns (uint[] memory) {
        return arr1;
    }

    // Array Length
    function arrayLength() public view returns (uint) {
        return arr2.length;
    }

    // Array Append, Array length is changed
    function arrayPush(uint _i) public {
        arr0.push(_i);
    }

    // Remove last element, Array length is changed
    // Pop() will not work on fixed size array
    function pop() public {
        arr1.pop();
    }

    // Delete, Array length is not changed
    // It resets the value at index to it's default value
    function remove(uint _index) public {
        delete arr2[_index];
    }


    // Function to convert an integer to a string
    // Internal Function: Only accessible within the current contract
    function toString(uint256 value) internal pure returns (string memory) {
        if (value == 0) {
            return "0";
        }

        uint256 temp = value;
        uint256 digits;

        // Count the number of digits in the value
        while (temp != 0) {
            digits++;
            temp /= 10;
        }

        bytes memory buffer = new bytes(digits);

        // Populate the buffer with ASCII representations of the digits
        while (value != 0) {
            digits--;

            // 48 is the ASCII value of char '0', adding 5 to it will result in 53 which as ASCII value for char '5'.
            buffer[digits] = bytes1(uint8(48 + (value % 10)));
            value /= 10;
        }
        // Final buffer value will be ['1', '2', '3', '4', '5'] & converting into string will result 12345
        return string(buffer);
    }


    // Array in memory
    function arrayInMemory() external pure returns (string[] memory) {
        // Create array in memory, only fixed size can be created
        string[] memory arr3 = new string[](11);

        // Append some data
        for (uint256 index = 0; index < arr3.length; index++) {
            // Convert the integer to a string before assigning it to the array
            arr3[index] = toString(index ** 3);
        }
        return arr3;
    }
}
