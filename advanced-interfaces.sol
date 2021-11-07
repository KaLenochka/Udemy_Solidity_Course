pragma solidity >= 0.7.0 < 0.9.0;

/*
INTERFACES

Interfaces are similar to abstract contracts and are created using interface keyword.
Following are the key carachteristics of the interface.

    Interface can not have any function with implementation.
    
    Finctions of interface can be only of type external.
    
    Interface can not have constructor.
    
    Interface can not have state variables.
    
    Interface can have enum, structs wich can be accessed using interface name dot notation.
*/

contract Counter {
    
    uint public count;
    
    function increment() external {
        count += 1;
    }}

//how do we interact with this contract without copy and pasting the code?
//ANSWER - INTERFACES!

interface ICounter {
    
    function count() external view returns (uint);
    function increment() external;
     
}

contract MyContract {
    
    function increment(address _counter) external {
        ICounter(_counter).increment();
    }
    
    function getCount(address _counter) external view returns (uint) {
        return ICounter(_counter).count();
    }
    // this is how you write contracts that interact with other contracts without copy paste 
}

/*
Exercise Interfaces with Uniswap (Decentralized Exchange)
In Uniswap each Uniswap smart contract, or pair, manages a liquidity pool made up of reserves of two ERC-20 tokens!
In this exercise you are going to use the IDE to speak to Uniswap and get the reserves of a Uniswap pair of your choosing :0 

These are the instructions in order to complete this exercise:
1. Create two interfaces which each hold separate function signatures which you must look up in the Solidity docs V2 
2. One interface will be called UniswapV2Factory which will contain the function signature that gets pairs.
3. Another interface will be called UniswapV2Pair wich will contain the function signature to get reserve values. 
4. Create a contract which contains addresses of the paired tokens you choose as well as the factory address.
5. Within the contract make a function which can successfully get the pair of your tokens and set it to a single address
6. Use that address to get the reserve values and finally return the reserve values 
7. Switch to Mainnet and connect MetaMask but DO NOT deploy the contract (or you will spend money!!!)
8. From the Mainnet manually go through the steps of retrieving the values without deploying or spending gas!
9. Post your results of the reserve values in our Discord community and celebrate beacuse you have seriously earned it! 
10. Good luck! 
*/

interface UniswapV2Factory {
    //Returns the address of the pair for tokenA and tokenB, if it has been created, else address(0) (0x0000000000000000000000000000000000000000).
    function getPair(address tokenA, address tokenB) external view returns (address pair);
}

interface UniswapV2Pair {
    //Returns the reserves of token0 and token1 used to price trades and distribute liquidity. 
    //Also returns the block.timestamp (mod 2**32) of the last block during which an interaction occured for the pair.
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
}

contract MainContract {
    
    address private usdc = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48; // USD Coin (USDC) 
    address private link = 0x514910771AF9Ca656af840dff83E8264EcF986CA; // ChainLink Token (LINK) 
    address private factory = 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f; //from the uniswap docs
    
    function getPairOfTokens() external view returns (uint, uint) {
        address pair = UniswapV2Factory(factory).getPair(usdc, link);
        (uint reserveA, uint reserveB, ) = UniswapV2Pair(pair).getReserves();
        return (reserveA, reserveB);
    }
    
}
