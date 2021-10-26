pragma solidity >= 0.7.0 < 0.9.0;

contract LearnConversions {
    
//uint defaults uint256
// uint is an unsigned integer wich has
//minimum value of 0
//maximum value of 2^256-1

//conversion to smaller type costs higher order bits 
uint32 a = 0x12345678;
uint16 b = uint16(a); // b = 0x5678

//Conversion to higher type adds padding bits to the gasleft
uint16 c = 0x1234;
uint32 d = uint32(c); // d = 0x00001234

//What is the cost?
//Converson to smaller bytes costs higher order data
bytes2 e = 0x1234;
bytes1 f = bytes1(e); // f = 0x12

//What does this add?
//Conversion to the larger bytes adds padding bits to the right
bytes2 g = 0x1234;
bytes4 h = bytes4(g); // h = 0x12340000
   
}
