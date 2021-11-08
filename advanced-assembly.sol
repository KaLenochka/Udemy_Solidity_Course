pragma solidity >= 0.7.0 < 0.9.0;

/*
Solidity rovides an option to use assembley language to write inline assembley within Solidity source code.

Assembley is a law level language that allows you to directly manipulate the EVM (more dangerous and not recommended)

EVM = smart contracts are not the real code in blockchain - solidity code is compiled to the lower level language    
*/

contract LearnAssembley {
    
    function addToEVM() external {
        uint x;
        uint y;
        //  uint z = x + y;
        
        //all of this is compiled to low level instructions (opcodes - the totl there is around 100)
    
        //how the heck do we use assembley???
        assembly {
        
        //declare an assembly block 
        //inside we can manipulate variables declared outside
        //no semi colon, = is actualy := and we can bring in opcodes
        let z := add(x,y)
        
        //if functions for
        
        //load data for a specific slot
        //let a := mload(0x40)
        
        //store something temporarily to memory
        //mstore(a,4)
        
        //persistent storage
        //sstore(a,100)
        }
    }
        
    //in EVM everething is stored in slotes 256 bits (a uint occupise one slote) whereas mapping or array is several
    
    function addToEVM2() public view returns (bool success) {
        
        uint size;
        address addr;
        
        //check whether an address contains any bytes of code or not
        assembly {
            size := extcodesize(addr)
        }
        
        if (size > 0) {return true;
            } else {
                return false;
            }
        }
/*
Exercise:
The function addToEVM3 is attempting to convert data bytes.
It wants to convert using Solidity a data byte into a fixed bytes size. 
However if you run the code the way it is the it will not compile successfully because
explicity type conversions are not allowed from bytes memory to bytes32. 

Use Assemby and the mload to convert the data to bytes 32 sucessfully. 
Hint: Bytes in memory size starts at second slot so 
we need to bring in the add 32 to start at the correct position.

Good luck!
*/
    
    function addToEVM3() external pure {
     bytes memory data = new bytes(10);
     
     // we cannot convert this into in a fixed size 
     // bytes32 dataB32 = bytes32(data);
     
     // but if we only care about the first 32 bytes we can use assembly! :)
     
     bytes32 dataB32;
     assembly {
         // bytes in memory is size so data actually starts at the second slot   
         dataB32 := mload(add(data, 32)) 
     }
}
}
