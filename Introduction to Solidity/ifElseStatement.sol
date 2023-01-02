//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract ifElse{

    uint256 myNum = 5;
    string public myString;

    // function get(uint256 _num) public returns(string memory ){
    //     if(_num == 5){
    //         myString = "Hey the value is 5";
    //     } else if(_num == 55) {
    //         myString = "Not 5";
    //     } else{
    //         myString = "Hey Rojas, Stop measuring us";
    //     }

    //     return myString;
    // }

    function shortHand (uint256 _num) public returns(string memory){
        // if (_num == 5){
        //     myString = "Hey Phelicia";
        // } else {
        //     myString = "That's not it bro..."
        // }

        return _num == 5 ? myString = "Hey Phelicia" : myString = "That's not it bro...";

    }
}