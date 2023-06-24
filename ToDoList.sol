// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract ToDoList {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public Todos;

    // here we can use memort too, but calldata consumes less gas
    function create(string calldata _text) external {
        Todos.push(Todo({
            text: _text,
            completed: false
        }));
    }

    function updateText(uint _index, string calldata _newText) external {
        Todos[_index].text = _newText;

        // if only updating one field, above appraoch saves gas
        // but when updating multiple fields, below approach is more efficient

        // Todo storage todo = Todos[_index];
        // todo.text = _newText;
    }

    function getTodo(uint _index) external view returns (string memory, bool) {
        Todo storage todo = Todos[_index];
        return (todo.text, todo.completed);
    }

    function toggleCompleted(uint _index) external {
        // toggle completed status
        Todos[_index].completed = !Todos[_index].completed;
    }
}