//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract X {

    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract Y {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

//There are 2 ways to inialize parent contract with parameters.

// Pass the parameter here in the inheritance list.

contract B is X("Input to X"), Y("Input to Y") {

}

contract C is X,Y {
    //Pass the parameter here in the constructor,
    //similar to function modifiers.
    constructor(string memory _name, string memory _text) X(_name) Y(_text) {

    }
}

//Parent constructord are always called in the order of inheritance regardless
    //of the order of parent contracts listed in the constructor of the child contract.

    //Order of constructors called:
    // 1. X
    // 2. Y
    // 3. D
    
contract D is X, Y {
    constructor() X("X was called") Y ("Y was called"){
    }   
}
    // Order of constructors called :
    // 1. X
    // 2. Y
    // 3. E
contract E is X,Y {
    constructor () Y("Y was called") X("X was called") {}
    
}
