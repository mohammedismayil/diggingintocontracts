// SPDX-License-Identifier: GPL-3.0

pragma solidity >0.8.0;

contract ForceBalance {

    string greeting = "voila from caller";
   

    // Let's imagine that contract B does not have the source code for
    // contract A, but we do know the address of A and the function to call.
    
    receive() external payable{

    }

    function destroyThisContract(address backupAddress) public{
        selfdestruct(payable(backupAddress));
    }

}