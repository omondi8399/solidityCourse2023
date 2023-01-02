//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Enum {
       //Enum representing shipping status
       enum Status {
           pending,
           Shipped,
           Accepted,
           Rejected,
           cancelled
       }

       //Default value is the first element listed in
       // definition of the type, in this case "Pending"
       Status public status;

       // Returns uint
       // Pending  - 0
       // Shipped  - 1
       // Accepted - 2
       // Rejected - 3
       // canceled - 4
       function get() public view returns (Status) {
           return status;
       }
       //Update status by passing uint into input
       function set (Status _status) public {
           status = _status;
       }

       //You can update to a specific enum like this 
       function cancel () public {
           status = Status.cancelled;
       }
       
       //delete resets the enum to its first value, 0
       function reset () public {
           delete status;
       }
}
