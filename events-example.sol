/*
Event Example:

Abstraction - Decentralized Exchange: On a smart contract traders can trade tokens - from the smart contract emit an event
so they can get the data (web front moble)

After emitting events you can't read them in the past only for entities outside the of the blockchain - not stored as memory 
events have lower gas cost than storage
*/

pragma solidity >= 0.7.0 < 0.9.0;

contract LearnEvents {
    
    // 1. Declair the event  2. Emit the event
    
        //CamelCase is a good convention - something to remember
        // only use 3 indexed per event
    event NewTrade(
        uint indexed date;
        address from;
        address indexed to;
        uint indexed amount;
        )
    
    function trade(address to, uint amount) external {
        //outside consumer can see the event through web3.js
        //block.timestamp is the global variable that gives the current timestamp
        emit NewTrade(block.timestamp, msg.sender, to, amount);
    }
    
}
