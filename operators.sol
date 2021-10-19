pragma solidity >= 0.7.0 < 0.9.0;

// Arithmetic Operators: + - % / ++ (+1) --(-1)
// Comparison Operators: == > < >= <= !=

// Operands: variables
// Operators: signs


contract Operators {
    
    function calculator() public view returns(uint) {
        uint a = 7;
        uint b = 5;
        uint result;
        result = a % b;
        return result;
    }
}

contract ComparisonOperators {
    
    uint a = 323;
    uint b = 54;
    
    function compare() view public {
        
        require(a <= b, 'This comparison is false');
    }
}

// Logical operator: &&(Logical AND), \\(Logical OR), !(Logical NOT)
// Bitwise operators: &(Bitwise AND). \(Bitwise OR), ^(Bitwise XOR)

contract LogicalOperators {
    uint a = 4;
    uint b = 5;
    
    function logic() public view returns(uint) {
        uint result = 0;
        if(a < b || a == 5) {
            result = a + b;
        }
        return result;
        
    }
    
    uint c = 17;
    uint d = 32;
    
    function logicExercise() public view returns(uint) {
        
        if(d > c && c != d) {
            return (c * d) / d;
        }
    }
}

// Assignment Operator: = . a = b (a is assigned the value of b)

contract AssignedOperator {
    uint b = 4;
    uint a = 3;
    
    function assign() public view returns(uint) {
        uint c = 2;
        return c += c + b;
    }
}

contract FinalExercise {
    uint a = 300;
    uint b = 12;
    uint f = 47;
    
    function finalize() public view returns(uint) {
        uint d = 23;
        if(a >= a && b < f) {
            d *= d - b;
        }
        return d;
    }
}
