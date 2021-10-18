pragma solidity >= 0.7.0 < 0.9.0;

contract learnFunctions {
    
    //function-name(parameter-list) scope returns() {\
    //statements }
    
    function remoteControleOpen(bool closedDoor, bool openDoor) public returns(bool) {
        
        //all the code of the function - the script 
        
    }
    
    //create a function that can add up two variables
    
    //local variables will superseed the state variables
    
    uint a = 45; //state variable
    // if we know that a is always 45 - then it's smart to just instantiate a = 45 as a state variable
    
    function addValues() public view returns (uint) {
        
        //uint a = 2; //local variable
        uint b = 3;
        uint result = a + b;
        return result;
    }
    
    //all the variables that we right in the function remain localized in the function
    
    function addNewValues() public view returns (uint) {
        //uint a = 1;
        uint b = 5;
        uint result = a + b;
        return result;
    }
    
    uint b = 4;
    
    function multiplyCalculatorByFour(uint a) public view returns (uint) {
        uint result = a * b;
        return result;
    }
    
    function devideCalculatorByFour(uint a) public view returns (uint) {
        uint result = a / b;
        return result;
    }
}
