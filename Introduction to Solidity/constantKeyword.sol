//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Constants {
    //130242 gas
    address public myAdd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // 104187
    // address public constant myAd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    function getConstant () public view returns(address){
        return myAdd;
    }
}