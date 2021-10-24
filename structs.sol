pragma solidity >= 0.7.0 < 0.9.0;

// Structs are types that are used to represent a record. Supose that you want to keep track of your movies in a library
// You might want to track the following attributes about each movie - 


contract LearnStructs {
    
    struct Movie {
        //add director variable  add movie title variable add movie id variable
        string title;
        string director;
        uint movie_id;
    }
    
    // we make a movie variable
    Movie movie;
    Movie newMovie;
    Movie comedy;
    
    // we create function that can add this information information
    function setMovie() public {
        movie = Movie('Blade Runner', 'Bradly Scott', 1);
        newMovie = Movie('Ameli', 'Ivan Ivanov', 2);
        comedy = Movie('Comedy', 'Petro Petrov', 3);
    }
    
    //function which returns the movie_id
    function getMovieId() public view returns (uint) {
        return movie.movie_id;
    }
    
    function getNewMovieId() public view returns (uint) {
        return newMovie.movie_id;
    }
    
    function getComedyId() public view returns (uint) {
        return comedy.movie_id;
    }
}

// 1. create a new movie and set it up so that it updates to the movie in the setMovie function
// 2. return the id of the new movie
// 3. create a new var called comedy and set up comedy to the datatype Movie 
//4. update the setMovie function with a comedy movie that contain name, director, and an id
//5. return the movie id of the comedy. 
