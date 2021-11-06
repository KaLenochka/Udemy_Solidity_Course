pragma solidity >= 0.7.0 < 0.9.0;

/*
     **************Inheritance!

Inheritance is a way to extend functionality of a contract.
Solidity suppors both single as well as multiple inheritance. 

Observe: The contract in Solidity is similar to a Class in C++ - a blueprint for an object

Classes can inherit and so can contracts!

Exercise Create two contracts A and B
    1. Contract A should have a state var called innerVal initialized to 100.
    2. Create a  fully accessible function called innerAddTen which returns 10 to any given input
    3. Contract B should inherit from contract A 
    4. Contract B should have a function called outerAddTen which returns 
    the calucaltion from innerAddTen function in Contract A to any given input
    5. Create a function in contract B which returns the value of innerVal from contract A
    6. Compile and successfully deploy the contract and test the result 
*/

contract A {
    uint innerVal = 100;
    
    function innerAddTen(uint _anyInput) public pure returns (uint) {
        return _anyInput + 10;
    }
}

contract B is A {
    
    function outerAddTen(uint _anyData) public pure returns(uint){
        return A.innerAddTen(_anyData);
    }
    
    function getInnerVal() public view returns(uint) {
        return A.innerVal;
    }
}
