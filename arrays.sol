pragma solidity >= 0.7.0 < 0.9.0;

contract LearnArrays {
    
    uint [] public myArray;
    uint [] public myArray2;
    uint [200] public myFixedSizeArray;
    
    //push() method adds one or more elements to the array and returns the new length of the array
    function push(uint number) public {
        
        myArray.push(number);
    }
    
    // pop() method removes the last element from an array and returns that value to the caller
    function pop() public {
        
        myArray.pop();
    }
    
    //length is a string property that is used to determine the length of a string
    function getlength() public view returns(uint) {
        return myArray.length;
    }
    
    function remove(uint i) public {
        delete myArray[i];
        //when you delete in the array the length remains the same
    }
}


contract ArrayExercise {
    
    uint [] public changeArray;
    uint [] newChangeArray;
    
    function removeElement(uint _i) public returns (uint[] memory) {
        
        // transfer all elements that are not equal to _i into new array newChangeArray (keeping order of elements)
        
        for(uint i=0; i < changeArray.length; i++) {
            if (i != _i) {
                newChangeArray.push(changeArray[i]);
            } 
        }
        changeArray = newChangeArray;
    }
    
    // function sets the index argument of the array to the last element of the array
    // remove the last element with the help of pop
    function removeElementVar2(uint _i) public {
        changeArray[_i] = changeArray[changeArray.length - 1];
        changeArray.pop();
    }
    
    function test() public returns (uint[] memory) {
        // the function that pushes numbers 1,2,3,4 into changeArray
        for (uint i=1; i <= 4; i++) {
            changeArray.push(i);
        }
        return changeArray;
    }
    
    function showChangeArray() public view returns (uint [] memory) {
        return changeArray;
    }
    
    function getLengthOfArray() public view returns(uint) {
        return changeArray.length;
    }
     
}
