pragma experimental SMTChecker;

contract C {
	function g() public pure returns (uint, uint) {
		uint a;
		uint b;
		(a, b) = g();
	}
}
//
// ----
// Warning 6321: (81-85): Unnamed return parameter will never be set.
