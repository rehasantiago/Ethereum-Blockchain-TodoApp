pragma solidity ^0.5.0;
///version of solidity
contract TodoList{
    uint public taskCount = 0;

    struct Task{
        uint id;
        string content;
        bool completed;
    }
    mapping(uint =>  Task) public tasks;
    ///like a key value pair
    event TaskCreated(
        uint id,
        string content,
        bool completed
    );

    constructor() public{
        createTask("hello");
    }

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount,_content,false);
        emit TaskCreated(taskCount,_content,false);
    }
}