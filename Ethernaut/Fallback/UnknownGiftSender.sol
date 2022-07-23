// SPDX-License-Identifier: GPL-3.0

pragma solidity >0.8.0;


contract UnknownGiftSender{


    function sendGiftToOurLovedOne(address _addr) public{

  _addr.call(abi.encodeWithSignature("greet()"));

    }
}