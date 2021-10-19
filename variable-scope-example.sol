pragma solidity >=0.5.0 < 0.9.0;


/*
 modify the rules of scope in Solidity with keywords:
 private public internal external 
 
Private - you can only call the function inside the contract
Internal - called only within the contracrs OR other contracts that inherit the smart contract. Internal is slightly less restrictive than public
Public - you can call the function from outside the smart contract as well inside the smart contract 
External - you can only call the fnction autside the smart contract not from other function 

*/

contract C {
    
    uint internal data = 10; //state variable
    
    function x() public pure returns(uint) {
        //uint data = 10; // local variable
        uint newData = 25;
        return newData;
    }
    
    function y() public view returns(uint) {
        return data;
    }
}
