pragma experimental SMTChecker;
contract C {
	function f() public pure returns(int) {
		int a;
		(,, a) = ((((((1, 3, (((((2)))))))))));
		assert(a == 2);
		assert(a == 3);
	}
}
// ----
// Warning 6321: (79-82): Unnamed return parameter will never be set.
// Warning 6328: (157-171): CHC: Assertion violation happens here.
