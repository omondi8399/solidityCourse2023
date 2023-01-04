//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Pure{
    uint256 num1 = 4;
    uint256 num2 = 10;

    function getData() public pure returns( uint256, uint256){

        uint256 knum1 = 30;
        uint256 knum2 = 40;
        return (knum1, knum2);
    }
}

// You can use pure when you aren't accessing any state variable
// But when accessing local and state variables, you can use view.
