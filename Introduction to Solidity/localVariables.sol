//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract localVariables{

    uint256 public myNumber;

    //Function for local variables

    function local() public  returns (address, uint256, uint256){
        
        uint256 i = 345;
        myNumber = i;

        i += 45;
        address myAddress = address(1);
        return (myAddress, myNumber, i);

    }
}
