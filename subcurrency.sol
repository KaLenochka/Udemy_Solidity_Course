pragma solidity >= 0.7.0 < 0.9.0;

//The contract allows only its creator to create new coins (different issuance schemes are possible)
//Anyone can send coins to each other without a need for registering with a username and password, all you need is a Ethereum keypair

contract Coin {
    
     //the keyword public  it's marking the variables here accessible from other contracts
     
     address public minter; 
     mapping(address => uint) public balances;
     
     event Sent(address from, address to, uint amount);
     
     constructor() {
         
         //constructor only runs when we deploy constructor
         minter = msg.sender;
     }
     
     //make new coins and send them to an address
     //only the owner can send these coins
     function mint(address receiver, uint amount) public {
         require(msg.sender == minter);
         balances[receiver] += amount;
     }
     
     //send any amount of coins to an existing address
     /*Event is an inheritable member of a contract. An event is emited, it stores the arguments passed in transaction logs.
     These logs are stored on blockchain and are accessible using the address of a contract till the contract is present on blockchain.
     */
     
     error insufficientBalance(uint requested, uint available);
     
     function send(address receiver, uint amount) public {
         if(amount > balances[msg.sender]){
             revert insufficientBalance({
                 requested: amount,
                 available: balances[msg.sender]
             });
         }
         balances[msg.sender] -= amount;
         balances[receiver] += amount;
         emit Sent(msg.sender, receiver, amount);
     }
}
