// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleStorage{
    // favorite number gets initialised to zero (0) if it has no value is assigned to it
    uint256 public myFavoriteNumber; // 0
    uint256[] listOffavoriteNumbers; // this [] is a notation for arrays. This is used to create an array or list of identical data contigously. The array may look like this [0, 78, 90]
   
   // with struct we can use it to create a new data structure having different data types
   struct person{
    uint256 favoriteNumber;
    string name;
   }

    // // person public myFriend = person (7,"Pat");// one variation 
    // person public pat = person({favoriteNumber:78, name:"Pat"});
    // person public John = person({favoriteNumber:67, name:"John"});
    // person public Mariah = person({favoriteNumber:56, name:"Mariah"});

    // if I have several friends, I would use array
   
   person[] public listOfPeople; //

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    //view: is used to read state of a blockchain. It does not allow the modification of state
    //pure: pure keyword disallows both mdification of state reading of state 
    //note that you dont spend gas when using the pure and view function keywords only when a function that spends gas calls it
    
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }
} 