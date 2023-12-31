// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.10;

contract Structure {
    struct ToDo {
        string text;
        bool completed;
    }


    // An array of ToDo structure
    ToDo[] public todos;


    // 3 Ways to initialize a struct
    function createStruct(string calldata _text) public {

        // 1. Calling it like a function
        todos.push(ToDo(_text, false));


        // 2. Key-Value mapping
        todos.push(ToDo({
            text: _text,
            completed: true
        }));


        // 3. Initialize an empty struct & then update it
        ToDo memory todo;
        todo.text = _text;
        todo.completed = false;

        todos.push(todo);
    }
}