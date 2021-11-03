pragma solidity >= 0.7.0 < 0.9.0;

/*
          The Withdrawal Pattern

Instead of using transfer which reverts the code we can use send which returns bool

Write a function so only the owner can send Tatianna funds with the send method with logic to set up 
what happens if the amount not sent to Tantianna

*/

function sendFundsToTatianna() public onlyOwner returns (bool success) {
    if(!tatianna.send(amount)) {
        //do something with the failure
    }
}

//this can still get messy for accounting

/*
Write the withdrawal function so that the investor can withdrawl funds ot their own through that functionality.
Let them do it themselves!

Enter our best friend over here - msg.sender
*/

/*
Write another function to claim refunds. Write a function called claimRefund wich requires that the balance of
the msg.sender greater than 0 and transfer the balance to the current caller. Pseudo balance var named balance.
*/

function claimRefund() public {
    require(balance[msg.sender] > 0);
    msg.sender.transfer(balance[msg.sender]);
}

//by the customer working directly to claim a refund with their contract address we eliminate the outside interference 
//verrrry greatly!!
// BY MAKING OUR TRANSACTIONS ONE AT A TIME we greatly reduce danger to our executions. - withdrawal patterns.

/* Exercise time! It is not safe to interact with more than one customer at a time so write a function 
to return funds using thr withdrawal pattern.

1. Write a function called withdrawFunds that takes an amount and returns bool success in the signature 
2. Require that the balance of the current caller is greater than or equal to the amount.
3. subtract the amount from the balance of the current sender
4. transfer the amount over and return the trueness of the function
*/

function withdrawFunds(uint amount) public returns (bool success) {
    require(balance[msg.sender] >= amount); //guards upfront
    balance[msg.sender] -= amount; //optomistic accounting
    msg.sender.transfer(amount); //trasfer
    return true;
}



