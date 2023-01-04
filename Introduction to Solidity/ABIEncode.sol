///SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

interface ERC20 { 
    function transfer(address, uint) external;
}

contract Token {
    function transfer(address, uint) external {}
}

contract AbiEncode {
    function test(address _contract, bytes calldata data) external {
        (bool ok,) = _contract.call(data);
        require(ok, "call failed");
    }

    function encodeWithSignature(address to, uint amount)
    external
    pure
    returns (bytes memory)
    {
        // Typo is not checked - "transfer(address, uint)"
        return abi.encodeWithSignature("transfer(address, uint256)", to,amount);
    }

    function encodeWithSelector(address to, uint amount)
         external
         pure
         returns (bytes memory)
         {
             // Typo is not checked - (ERC20.transfer.selector, true, amount)
             return abi.encodeWithSelector(IERC20.transfer.selector, to, amount);
         }

         function encodeCall(address to, uint amount) external pure returns (bytes memory uint){
             // Typo and type errors will not compile
             return abi.encodeCall(ERC20.transfer, (to, amount));
         }
}