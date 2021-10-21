pragma solidity >= 0.7.0 < 0.9.0;

contract Member {
    string name;
    uint age;
    
    //initialize name and age upon deployment
    
    constructor(string memory _name, uint _age) public {
        name = _name;
        age = _age;
    } 
}

//is an option to call the constructor

contract Teacher is Member //('Rachel', 28) 
{
    constructor(string memory n, uint a) Member(n, a) public {}
    
    function getName() public view returns(string memory) {
        return name;
    }
}

contract Base {
    uint data; 
    
    constructor(uint _data) public {
        data = _data;
    }
    
    function getData() public view returns(uint) {
        return data;
    }
}

contract Derived is Base (5) {
    
    function fiveData() public view returns(uint) {
        return data;
    }
}
