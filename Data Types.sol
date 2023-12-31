// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.10;

contract solidityDataTypes {

    // Boolean data type
    bool public myBool = true;


    // Bytes data type
    bytes2 public mybytes2 = 0xa0ff;
    bytes8 public mybytes8 = 0xa0ffa0ffa0ffa0ff;

    // String data type
    string public myString = "Solidity is cool";


    // Integer (int & unsigned int) data type
    int8 myInt = -128;              // Signed: Stores both Positive & Negative whole numbers
    uint16 myUnint = 65535;         // Unsigned: Only stores non-negative whole numbers

    // Min Max value of int
    int public minInt = type(int).min;
    int public maxInt = type(int).max;


    // Fixed Point Numbers (Float)
    fixed public myFixedNumber = 3.14;


    // Default Values
    bool public defaultBool;
    uint public defaultUint;
    int public defaultInt;
    address public defaultAddr;


    // Address data type
    // An Ethereum address is a 20-byte (40 digits) identifier that represents an account on the Ethereum blockchain.
    address public myAddress = 0x742d35Cc6634C0532925a3b844Bc454e4438f44e;


    // Array data type
    uint[] myUintArray = [2, 4, 6, 8, 10];          // Dynamic array
    uint[3] public age = [8, 15, 32];               // Fixed size array


    // Mapping data type (Dictionary)
    mapping(address => uint) balances;


    // Struct data type: A composite data type that allows you to define your own custom structure.
    struct Person {
        string myString;
        uint myUnint;
        address myAddress;
    }


    // Enum data type: A user-defined type consisting of a set of named values
    enum Name {Pending, Approved, Rejected }
}

