pragma solidity >= 0.7.0 < 0.9.0;

contract DecisionMaking {
    
uint oranges = 4;

function validateOranges() public view returns (bool) {
    if(oranges == 5) //whatever goes in the parantheses evaluates the trueness
    
    //the curly brackets are for the statement of the if, they means 'then'
    {
        return true;
    } else {
        return true;
    }
    
}

uint stakingWallet = 6;

function airDrop() public view returns (uint) {
    
    if(stakingWallet == 10) {
        return stakingWallet + 10;
          } else {
        return stakingWallet + 1;
    }
}

}
