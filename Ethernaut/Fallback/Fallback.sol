// SPDX-License-Identifier: GPL-3.0

pragma solidity >0.8.0;

contract GiftCard{
    mapping(address=>string) public wishesbypeople;
    // string public wish;

    // constructor(){
    //     wish = "Many more happy returns of the day";
    // }

    function wishPeople(string memory wish) public{
wishesbypeople[msg.sender] = wish;
    }

    receive() external payable{

    }

    fallback() external {
wishesbypeople[msg.sender] = "Wishes with love-couldn't wish directly.";
    }
}