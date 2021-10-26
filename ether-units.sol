pragma solidity >= 0.7.0 < 0.9.0;

//Ether Units 
// Ethereum is blockchain and Ether is the currency for Ethereum

contract LearnEtherUnits {
    
    function test() public {
        
        // the wei is the smallest denomination of ether
        assert(1000000000000000000 wei == 1 ether);   //10^18 wei = 1 eth
        assert(1 wei == 1); //1wei = 1
        
        assert(1 ether == 1e18);
        //create an assertion for 2 eth to be equivalent to weis
        assert(2 ether == 2e18 wei);
    }
    
// Similar to currency, Solidity has time units where lowest unit is second and we can use seconds, 
// minutes, hours, days and weeks as suffix to denote time.

// Exercise - Create the following assertions in a function called exercise:
// Assert equivalencies for minutes to seconds, hours to minutes, days to hours, and weeks to days
    function exercise() public {
        assert(1 minutes == 60 seconds);
        assert(1 hours == 60 minutes);
        assert(1 days == 24 hours);
        assert(1 weeks == 7 days);
    }
}
