//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

//--Modifiers are code that can be run before and after the function call
//--Generally used for three reasons
//--Restrict access , validate inputs and Guard against reentrancy hack 

contract FunctionModifier{

    address public owner;
    uint256 public x = 10;
    bool public locked;

    constructor (){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "Not Owner");
        _; // This means continue with the function further / exercute the next function
    }

    modifier validateData (address _addr){
        require(_addr != address(0), "Not Valid address");
        _; 
    }

    function changeOwner(address _newOwner) public onlyOwner validateData(_newOwner){
        owner = _newOwner;
    }

    modifier noReentrantrancy(){
        require(!locked, "No reentrancy");
        locked = true;
        _;
        locked = false;
    }

    function decrement (uint256 i) public noReentrantrancy{
        x -= 1;
        if (i > 1){
            decrement(i - 1);
        }
    }

}