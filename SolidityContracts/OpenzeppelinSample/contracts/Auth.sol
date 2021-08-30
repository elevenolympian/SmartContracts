pragma solidity ^0.8.0; 

contract Auth {
    address private _administrator;

    constructor() {
        //Make the deployer of the contract the administrator
        _administrator = msg.sender;
    }

    //control function
    function isAdministrator(address user) public view returns(bool) {
        return user == _administrator; //you can pass the msg.sender
    }
}