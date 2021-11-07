pragma solidity >= 0.7.0 < 0.9.0;

/*

Libraries are similar to Contracts but are mainly intended for reuse. A library contains functions which other contracts can call.
Solidity  has certain restrictions on use of a Library. Following are the key characteristics of a Solidity Library:

    Library functions can be called directly if they do not modify the state.
    That means pure or view functions only can be called from outside the library.
    
    Library can not be destroyed as it is assumed to be stateless.
    
    A Library can not have state variables.
    
    A Library can not inherrit any element.
    
    A Library can not be ingerrited.
*/

library Search {
    //we want this loop to return the index value of some integer we are searching for 
    function indexOf(uint[] storage self, uint value) public view returns (uint) {
        for(uint i=0; i<self.length; i++) if(self[i] == value) return i;
    }
}

contract Test {
    uint[] data;
    constructor() public {
        for(uint i=1; i<=5; i++) data.push(i);
    }
    
    function getData() public view returns (uint [] memory) {
        return data;
    }
    
    function isValuePresent(uint val) external view returns(uint) {
        uint value = val;
        uint index = Search.indexOf(data, value);
        return index;
    } 
    
}


/*

The directive using A for B; can be used to attach library functions of library A to a given type B.
These functions will use the caller type as their first parameter (identified using self).

Exercise: 
1. Copy over the library Search and the contract Test below
and rename library Search to Search2 and contract Test to Test2. 

2. Using the A for B library pattern assign the new library to an empty array type 
and
rewrite the code so that we can run the same search hardcoded this time to the value of 4
accordingly.  
*/

library Search2 {
    //we want this loop to return the index value of some integer we are searching for 
    function indexOf(uint[] storage self, uint value) public view returns (uint) {
        for(uint i=0; i<self.length; i++) if(self[i] == value) return i;
    }
}

contract Test2 {
    using Search2 for uint [];
    
    uint[] data;
    constructor() public {
        for(uint i=1; i<=5; i++) data.push(i);
    }
    
    function getData() public view returns (uint [] memory) {
        return data;
    }
    
   function isValuePresent() external view returns(uint) {
        uint value = 4;
        uint index = data.indexOf(value);
        return index;
    } 
    
}
