// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.10;


/*
In Solidity, data locations refer to where variables store and retrieve their data. 
Variables are declared as either storage, memory or calldata to explicitly specify the location of the data.
    Storage:
    Storage is where the contract's permanent state is stored.
    It's like a database on the Ethereum blockchain.

    Memory:
    Memory is a temporary place where data is stored during the execution of a function.
    It's erased between (external) function calls.

    Calldata:
    Calldata is a special, read-only area where function arguments are stored when a function is called.
    It's mainly used to hold input data from external function calls.
*/

contract ChildStore {
    struct Child {
        string name;
        uint age;
    }

    Child[] public children;

    function createChildren() public {
        Child memory child = Child({
            name: "Jake",
            age: 34
        });

        children.push(child);
    }

    // During execution, you will notice that the value will not change, because the data location is set to memory
    function changeChildInMemory(uint newAge) public view{
        Child memory child = children[0];
        child.age = newAge;
    }

    function changeChildInStorage(uint newAge) public {
        Child storage child = children[0];
        child.age = newAge;
    }

    function changeChildCallData(string calldata newName) public {
        Child storage child = children[0];
        child.name = newName;

        // The below code will throw an error if we try to modify the variable
        // newName = "Victor";
    }
}

