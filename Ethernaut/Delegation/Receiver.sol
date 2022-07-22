// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract Receiver {

    string greeting = "voila from receiver";
    
    event Received(string greeting);

   
    function greet()public{
        emit Received(greeting);

       
    }
}