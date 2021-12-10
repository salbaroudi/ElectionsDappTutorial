var Election = artifacts.require("./Election.sol");

contract("Election", function(accounts) {

  var electionInstance;

  it("initializes with two candidates", function() {
    return Election.deployed().then( function(instance) {
      return instance.candidatesCount();
    }).then(function(count) { //count is just what was returned by the promise.
        assert.equal(count,2);
    });
  });

  it("it initializes the cnadidates with the correct values", function() {
    return Election.deployed().then(function(instance) {
      electionInstance = instance;
      return electionInstance.candidates(1);
    }).then(function(candidate) {
      assert.equal(candidate[0], 1, "contains the correct id");
      assert.equal(candidate[1], "Name 1", "contains the correct name");
      assert.equal(candidate[2], 0, "contains the corret votes count");
      return electionInstance.candidates(2);
    }).then(function(candidate) { //Note we chain promises one after another!!
      assert.equal(candidate[0], 2, "contains the correct id");
      assert.equal(candidate[1], "Name 2", "contains the correct name");
      assert.equal(candidate[2], 0, "contains the corret votes count");
    });
  });





});
