pragma solidity >= 0.7.0 < 0.9.0;

contract ZeroDetective {
     uint a = 10;
     uint b = 0;
     
     function c() public view returns(uint) {
         return a % b;
     } 
}

/*
call to ZeroDetective.c errored: VM error: revert.

revert
	The transaction has been reverted to the initial state.
Note: The called function should be payable if you send value and the value you send should be less than your current balance.
Debug the transaction to get more information.
*/
