pragma solidity ^0.5.16;

contract Election {
  //Constructor
  //Read candidate
  //Constructor

  string public candidate;

  //Note: We can't use the Contract Name to signal constructor - deprecated.
  constructor () public {
    candidate = "Candidate 1";
  }


}
