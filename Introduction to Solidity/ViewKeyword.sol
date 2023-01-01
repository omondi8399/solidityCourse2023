//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract  View{
    
    uint256 public Num1 = 2;
    uint256 public Num2 = 7; 

    // function getResults() public view returns(uint256, uint256){
    //     return(num1, num2);
    // }

    function getResults() public view returns(uint256, uint256){
        // uint256 num1 = 20;
        // uint256 num2 = 40;


        uint256 product = Num1 * Num2;
        uint256 total = Num1 + Num2;

        return (product, total);
      
    }
}