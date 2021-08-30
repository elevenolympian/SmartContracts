// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; 

import "@openzeppelin/contracts/access/Ownable.sol";

// import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract OpenZeppelinTest is Ownable{ 

    uint256 private _value; 

    event ValueChanged(uint256 value);

    //The onlyOwner modifier restricts who can call the store function.
    function store(uint256 value) public onlyOwner {
        _value = value; 
        emit ValueChanged(value);
    }
}
