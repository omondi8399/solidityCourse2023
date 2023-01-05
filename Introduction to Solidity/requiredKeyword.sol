//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;
//solidity error Handling
contract Require {
   function checkInput(uint256 _input) public view returns(string memory){
       require(_input >= 0, "Invalid uint8");
       require(_input <= 255, "Invalid uint8");
       
    return "Input is uint8";

   }

   function Odd (uint256 _input) public view returns(bool){
       require(_input % 2 != 0);
       return true;
   }

}

//Use for Debugging



