pragma solidity >= 0.7.0 < 0.9.0;

contract LearnMapping {
    
    mapping(address => uint) public myMap;
    
    function getAddress(address _addr) public view returns(uint) {
        return myMap[_addr];
    }
    
    function setAddress(address _addr, uint _i) public {
        myMap[_addr] = _i;
        
    }
    
    function removeAddress(address _addr) public {
        delete myMap[_addr];
    }
}


// Mapping Assignment:
    // 0. Create a unique data type as a struct called Movie and give it the string properties: title and diretor.
    // 1. Create a map called movie which takes a uint as a key and Movie as a value 
    // 2. create a function called addMovie which takes three inputs, movie id, title and director which 
    // assigns a value of an integer to a movie added back to the movie map. It should include a title and director name.
    // 3. Deploy the contract and update the movie information to the movie map with our favorite movies! 
    
contract MappingAssignment {
    
    struct Movie {
        string title;
        string director;
    }
    
    mapping(uint => Movie) movie;
    mapping(address => mapping(uint => Movie)) public myMovie;
    
    function addMovie(uint movie_id, string memory title, string memory director) public {
        movie[movie_id] = Movie(title, director);
    }
    
    function addMyMovie(uint movie_id, string memory title, string memory director) public {
        myMovie[msg.sender][movie_id] = Movie(title, director);
        // msg.sender is a global variable accessable throughout solidity with the captures the address 
        //that is calling the contract
    }
}

// NESTED MAPPING (maps with maps)
// ex. mapping(key1 => mapping(key2 => value2))
