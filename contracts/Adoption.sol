pragma solidity ^0.5.0;


contract Adoption {
 
  // an array with the varaible name of "adtopers" which will take a max of 16 addresses
  address[16] public adopters;

  //Adopt a pet
  function adopt(uint petId) public returns (uint){
    require (petId >= 0 && petId <=15);
    
    adopters[petId] = msg.sender;

    return petId;

  }

  // Retrieving the adopters
  function getAdopters() public view returns (address[16] memory) {
    return adopters;
  }

}
