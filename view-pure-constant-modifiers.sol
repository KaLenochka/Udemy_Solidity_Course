pragma solidity >= 0.7.0 < 0.9.0;

//View function ensure that they will not modify the state (return values)
// Pure functions ensure that they not read or modify the state (return calculations)

contract MyContract {
    
    uint value;
    
    //getValue is a read only function that returns a value
    // eth call
    function getValue() external view returns(uint){
        return value;
    }
    
    function getNewValue() external pure returns(uint){
        return 3 + 3;
    }
    
    //setValue modifies the state value
    //eth send transaction
    function setValue(uint _value) external {
        value = _value;
        
    }
    
    function multiply() external pure returns(uint) {
        return 3 * 7;
    }
    
    function valuePlusThree() external view returns(uint) {
        return value + 3;
    }
}

/* 
Exercise: 
1. create a function called multiply which returns 3 multiplied by 7 
2. create another fuction called valuePlusThree which returns the state variable value + 3 
3. sucessfully deploy the contracts and test for the results.
***Remember*** to use the appropriate modifying keywords accordingly!!!!!!!
*/
