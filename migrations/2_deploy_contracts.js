var TodoList = artifacts.require("./TodoList.sol");


module.exports = function(deployer) {
    deployer.deploy(TodoList);
};


// If we update the state of the contract we do migrations