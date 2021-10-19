pragma solidity >= 0.7.0 < 0.9.0;

contract LoopContract {
    
    //a list of numbers from 1 to 10
    uint [] public numbersList = [1,2,3,4,5,6,7,8,9,10];
    
    // Ex.: if we have 4 how many numbers in our list can be a multiple (answer should be 2)
    // a loop that acts like the miltiple checker in our numbersList
    
    function checkMultiples(uint _number) public view returns(uint) {
        uint count = 0;
        // 3 part statement for a for loop
        // 1. initialise start of loop
        // 2. determine length of loop
        // 3. to direct the index after each turn
        for(uint i=1; i<numbersList.length; i++) {
            // the logic for the loop in here
            if(checkMultipleValidity(numbersList[i], _number)) {
                count++;
            }
        }
        return count;
    }
    
    // create a function that can check if two numbers are divisible by each other - or are they multiples of each other
    
    function checkMultipleValidity(uint _num, uint _nums) public view returns(bool) {
        // take two numbers and if they return modulo of zero, then the second number is the multiple of the first number
        
        if(_num % _nums == 0) {
            return true;
        } else {
            return false;
        }
    } 
} 

contract MyLoopingPracticeContract {
    
    uint [] public longList = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
    uint [] public numbersList = [1,4,34,56];
    
    function guessTheNumber(uint _gnum) public view returns(bool) {
        for(uint i=0; i < numbersList.length; i++) {
            if (numbersList[i] == _gnum) {
                return true;
            }
        }
    }
    
    function evenNumbers() public view returns(uint) {
        uint count = 0;
        for(uint i=1; i<longList.length; i++) {
            if(longList[i] % 2 == 0) {
                count++;
            }
        }
        return count;
    }
}
