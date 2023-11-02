pragma solidity >=0.5.2;

contract TodoList {

    //State Variable - Store Tasks that are store in the blockchain
    //uint - unsigned integer - only positive numbers
    uint public taskCount = 0;

    //Struct - Define the structure of the task for user data Type
    struct Task {
        uint id;
        string content;
        bool completed;
    }

    //Mapping - Key Value Pair
    //uint - unsigned integer - only positive numbers data type of the key
    //Task - struct data type of the value
    mapping(uint => Task) public tasks;


    //map task to the mapper
    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }

    //constructor - function that runs when the contract is deployed
    constructor() public {
        createTask("Blockchain is awesome!");
    }

    

}
