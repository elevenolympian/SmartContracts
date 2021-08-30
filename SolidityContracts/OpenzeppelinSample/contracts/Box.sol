// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Auth.sol";



contract Box {
    uint256 private _value; 
    Auth private _auth;

    //Emitted when the stored value changes
    event ValueChanged(uint256 value);

    //constructor
    constructor(Auth auth) {
        _auth = auth;
    }

    function store(uint256 value) public {
        _value = value;  //new value
        emit ValueChanged(value); //store it as a piece of logs.
    }

    function retrieve() public view returns (uint256) {
        return _value;
    }


}