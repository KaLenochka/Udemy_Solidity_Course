pragma solidity >= 0.7.0 < 0.9.0;

/*
Your assignment is to create a calculation library with the following functionality:

It should do basic arithmetic calculators to any two inputs including: addition, subtraction, division, and multiplication.

In addition, it should also always return back the address of the owner of the contract.
*/

library Calculation {
    
    function addData(uint a, uint b) public view returns (uint, address) {
        
        uint result = a + b;
        return (result, msg.sender);
    }
    
    function subData(uint a, uint b) public view returns (uint, address) {
        
        uint result = a - b;
        return (result, msg.sender);
    }
    
    function divData(uint a, uint b) public view returns (uint, address) {
        
        require (b != 0, 'Division by zerro!');
        uint result = a / b;
        return (result, msg.sender);
    }
    
    function multData(uint a, uint b) public view returns (uint, address) {
        
        uint result = a * b;
        return (result, msg.sender);
    }
}

contract TestCalculation {
    
    function getAddData(uint _a, uint _b) public view returns(uint, address) {
        return Calculation.addData(_a, _b);
    }
    
    function getSubData(uint _a, uint _b) public view returns(uint, address) {
        return Calculation.subData(_a, _b);
    }
    
    function getDivData(uint _a, uint _b) public view returns(uint, address) {
        return Calculation.divData(_a, _b);
    }
    
    function getMultData(uint _a, uint _b) public view returns(uint, address) {
        return Calculation.multData(_a, _b);
    }
}
