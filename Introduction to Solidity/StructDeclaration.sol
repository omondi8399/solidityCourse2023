//SPDX-License-Identifier: MIT 

pragma solidity ^0.8.13;

struct Todo { 
    string Text;
    bool completed;
}

import "./StructDeclaration.sol";

contract Todos {
    //An array of 'Todo' structs
    Todo[] public todos;
}