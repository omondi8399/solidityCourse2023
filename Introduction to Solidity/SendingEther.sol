//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract ReceiveEther{
    /*

    Which function is called, fallback() or receive() ?

            send Ether
                |
          msg.data is empty ?
               /  \   
            Yes    no
            /       \
receive() exist?     fallback()
          /  \ 
receive()     fallback()  

    */

    // Function to recieve Ether. msg.data must be empty
    receive() external payable {}

    // Fallback function is called when msg.data is not empty.
    fallback() external payable {}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}

contract SendEther {
    function sendViaTransfer(address payable _to) public payable {
        //This function is no longer recommended for sending Ether.
        _to.transfer(msg.value);
    }

    function sendViaSend(address payable _to) public payable {
        //send returns a boolean value indicating success or failure.
        //This function is not recommended for sending Ether.
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send ether");
    }

    function sendViaCall(address payable _to) public payable {
        // Call returns a boolean value indicating success or failure.
        //This is the current recommended method to use.
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");// This is the recommended method by most Devs
        require(sent, "Failed to send Ether");
    }
}