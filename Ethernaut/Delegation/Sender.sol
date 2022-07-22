
// SPDX-License-Identifier: GPL-3.0

pragma solidity >0.8.0;

contract Caller {

    string greeting = "voila from caller";
    event Response(bool success, bytes data);

    // Let's imagine that contract B does not have the source code for
    // contract A, but we do know the address of A and the function to call.
    function testCallFoo(address payable _addr) public payable {
        // You can send ether and specify a custom gas amount
        (bool success, bytes memory data) = _addr.call(
            abi.encodeWithSignature("greet()")
        );

        emit Response(success, data);
    }
function testDelegateCall(address payable _addr) public payable {
        // You can send ether and specify a custom gas amount
        (bool success, bytes memory data) = _addr.delegatecall(
            abi.encodeWithSignature("greet()")
        );

        emit Response(success, data);
    }
    // Calling a function that does not exist triggers the fallback function.
    function testCallDoesNotExist(address _addr) public {
        (bool success, bytes memory data) = _addr.call(
            abi.encodeWithSignature("doesNotExist()")
        );

        emit Response(success, data);
    }
}