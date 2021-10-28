pragma solidity >= 0.7.0 < 0.9.0;

/* Define FallBack Function:
     1. Cannot have a name (anonymous)
     2. Does not take any inputs
     3. Does not return any outputs
     4. Must be declared as external
     */

contract FallBack {
    
    event Log(uint gas);
    
    fallback() external payable {
        //not recommended to write much code in here - because the function will fail if it uses too much gasleft
        
        //invoke the send and transfer methods: we get 2300 gas which is enaugh to emit a log
        //invoke the call method: we get all the gas
        
        //special solidity function gasleft returns how much gas is legt
        emit Log(gasleft());
    }
    
    function getBalance() public view returns(uint) {
        //return the stored balance of the contract
        
        return address(this).balance;
    }
    
}

//new contract will sent Ether to FallBack contract wich will trigger the FallBack functions

contract SendToFallBack {
    
    function transferToFallBack(address payable _to) public payable {
        //send ether with the tracsfer method
        //automatically transfer will transfer 2300 gas amount
        _to.transfer(msg.value);
    }
    
    function callFallBack(address payable _to) public payable {
        //send ether with the call method
        (bool sent,) = _to.call{value:msg.value}('');
        require (sent, 'Failed to send!');
    }
 }
