//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract ForLoop { 
    uint256[] data;

    function Loop() public returns(uint256 [] memory){
        for(uint256 i = 0; i < 5; i++){
            data.push(i);
        }
        return data;
}

}