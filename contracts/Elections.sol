pragma solidity ^0.5.16;

contract Election {

  //Model a candidate/Store Candidates
  //Fetch Candidates
  //Store Candidates
  //Store Candidates Count.

  struct Candidate {
    uint id;
    string name;
    uint voteCount;
  }

  //Note: This is a kind of enumeration of Candidates stored
  //On the blockchain! We can't know its size, so we keep
  //track with a state variable.
  mapping(uint => Candidate) public candidates;
  uint public candidatesCount;


  string public candidate;

  //Constructor
  //Note: We can't use the Contract Name to signal constructor - deprecated.
  constructor () public {
    addCandidate("Name 1");
    addCandidate("Name 2");
  }


  //Add Candidates Function:
  function addCandidate (string memory _name) private {
    candidatesCount ++;
    candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);

  }

}
