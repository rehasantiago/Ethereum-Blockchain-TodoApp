pragma solidity ^0.5.0;
///version of solidity
contract TodoList{
    uint public taskCount = 0;

    struct Task{
        uint task;
        string content;
        bool completed;
    }
    mapping(uint =>  Task) public tasks;
    ///like a key value pair

    constructor() public{
        createTask("hello");
    }

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount,_content,false);
    }
}