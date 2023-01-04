//SPDX-license-Identifier: MIT

pragma solidity ^0.8.13;

contract HashFunction {
    function hash(
        string memory _text,
        uint _num,
        address _addr
    ) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_text, _num, _addr));
    }
    // Example of hash collision
    // Hash collision can occur when you pass more than one dynamic data type 
    // to abi.encodedPacked. In such case, you should use abi.encode instead.
    function collision(string memory _text, _string memory _anotherText)
         public
         pure
         returns (bytes32) 
    {
        // encodePacked(AAA,BB) -> AAABBB
        // encodePacked(AA, ABBB) -> AAABBB
        return keccak256(abi.encodePacked(_text, _anotherText));
    }
}

contract GuessTheMagicWord {
    bytes32 public answer = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    //Magic word is "Solidity"
    function guess(string memory _word) public view returns (bool) {
          return keccak256(abi.encodePacked(_word)) == answer;
    }
}