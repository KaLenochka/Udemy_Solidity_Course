pragma solidity >= 0.7.0 < 0.9.0;

/*
ABSTRACT CONTRACTS 

Abstract contract is one which contains at least one function without any implementation.
Such a contract is used as a based contract.
Generally an abstract contract contains both impemented as well as abstract functions.
Derived contract will impement the abstract function and use the existing functions as end when required.

*/

//base
abstract contract X {
    
    //since the function has no implementation we should mark it as virtual
    function y() public view virtual returns(string memory);
}

contract Z is X {
    function y() public override pure returns(string memory) {
        return 'Hello!';
    }
}

//technicaly contract is still abstract since it has at least one function without body 
//base contract
abstract contract Member {
    string name;
    uint age = 38;
    
    //because  function setName has no body  the contract is now abstract
    function setName() public virtual returns(string memory);
    
    function returnAge() public view returns (uint) {
        return age;
    }
}


//derived contract
contract Teacher is Member {
    function setName() public view override returns(string memory) {
        return 'Gordan';
    }

}

//base contract
//derived contract

/*
Exercise:
1. Create an abstract base contract called Calculator with a read only public function that returns integers 
2. Create a derived contract called Test which derives the Calculator contract and can calculate 1 + 2 and return the result 

*/

//base contract
abstract contract Calculator {
    function calc() public view virtual returns (uint);
}

//derived contract
contract Test is Calculator {
    function calc() public view override returns (uint) {
        uint a = 1;
        uint b = 2;
        uint result = a + b;
        return result;
    }
}
