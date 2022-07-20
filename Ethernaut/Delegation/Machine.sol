pragma solidity ^0.5.8;
interface Storage{
    function setValue(uint v) external ;

    function getValue() external ;
}
contract Machine {
   
    uint public valueOfStorage;
constructor() public {
      
       
    }
    
   
function getValue() public view returns (uint) {
        return valueOfStorage;
    }

    function changeStorage(address addr,uint val)public {
        Storage(addr).setValue(val);
    
    }
}