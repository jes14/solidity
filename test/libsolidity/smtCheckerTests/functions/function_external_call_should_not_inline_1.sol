pragma experimental SMTChecker;
contract State {
	C c;
	function f() public returns (uint) {
		while(true)
			c.setOwner();
	}
}
contract C {
	address owner;
	function setOwner() public {
		owner = address(0);
	}
}
// ----
// Warning 6321: (85-89): Unnamed return parameter will never be set.
