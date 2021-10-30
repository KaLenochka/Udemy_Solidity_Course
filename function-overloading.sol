/*
Function Overloading:

You can have multiple defenitions for the same function name in the same scope
The defenition of the function must differ from each other by the types and/or the number of arguments in the argument list
You cannot overload function declarations that differ only by return types
*/

contract FunctionOverloading {
    
    /*
    function x(uint lightswitch, uint wallet) public {
        
    }
    
    function x(uint wallet) public {
        
    }
    */
    
    function sumOfArg(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
    
    function sumOfArg(uint a, uint b, uint c) public pure returns (uint) {
        return a + b + c;
    }
    
    function getSumOfTwoArgs(uint a, uint b) public pure returns (uint){
        return sumOfArg(a, b);
    }
    
    function getSumOfThreeArgs(uint a, uint b, uint c) public pure returns (uint) {
        return sumOfArg(a, b, c);
    }
}

/*
Exercise:
1.Create two functions with the same name that return the sum of their arguments -
2.one function which takes two arguments and another function which takes three arguments.
3.Create two other functions which can call each sum function and return their various sums.
4.Successfully deploy the contract and test the results of overloading functions.
*/
