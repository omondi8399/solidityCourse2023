//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

enum Status {
           pending,
           Shipped,
           Accepted,
           Rejected,
           cancelled
       }

import "./EnumDeclaration.sol";

contract Enum {
     Status public status;
}