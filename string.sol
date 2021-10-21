pragma solidity >= 0.7.0 < 0.9.0;

contract LearnStrings {
    
    string greetings = 'Hello! You\'re here now!';
    //watch out for the weir changeGreeting
    // \ - skip a char 
    // \n - skip a line - solidity supported
    
    
    function sayHello() public view returns(string memory) {
        
        return greetings;
    }
    
    function changeGreeting(string memory _change) public {
        
        greetings = _change;
        
    }
    
    function getChar() public view returns(uint) {
        //return greetings.length; - is too expensive
        // convert strings to bytes we can return length
        //bytes are the basic measiurement in computer processing
        bytes memory stringToBytes = bytes(greetings);
        return stringToBytes.length;
    }
}

contract ExerciseLernStrings {
    
    string favoriteColor = 'blue';
    
    function myFavoriteColor() public view returns(string memory) {
        return favoriteColor;
    }
    
    function changeColor(string memory _color) public {
        favoriteColor = _color;
    }
    
    function charColor() public view returns(uint) {
        bytes memory charOfColor = bytes(favoriteColor);
        return charOfColor.length;
    }
}
