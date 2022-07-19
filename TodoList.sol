//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;
contract TodoListApp{

  struct Todo {
    string text;
    bool completed;
  }

  Todo[] public todoList;

  function set(string calldata _text) external {
    todoList.push(Todo({text: _text, completed: false}));
  }

  function update(uint _index, string calldata _text) external {
    Todo storage todoText = todoList[_index];
    todoText.text = _text;
  }

  function get(uint _index) external view returns(string memory _text, bool completed){
    Todo storage todo = todoList[_index];
    return (todo.text, todo.completed);
  } 
  function markCompleted(uint _index) external {
    Todo storage todo = todoList[_index];
    todo.completed = !todo.completed;

  }
  }