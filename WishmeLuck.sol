// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract WishMeLuck {
    address public owner;

    string public greeting;

    constructor() {
        owner = msg.sender;
    }

    function withdraw() public {
        if (msg.sender == owner) {
            payable(owner).transfer(address(this).balance);
        }
    }

    function changeOwner(address newOwner) public {
        owner = newOwner;
    }

    function saveGreeting(string memory givenGreeting) public {
        greeting = givenGreeting;
    }

    function getGreeting() public view returns (string memory) {
        return greeting;
    }

    receive() external payable {}
}
