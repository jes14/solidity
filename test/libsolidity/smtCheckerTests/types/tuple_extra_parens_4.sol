pragma experimental SMTChecker;
contract C {
	function f2() public pure returns(int) {
		int a;
		((((((, a)))),)) = ((1, 2), 3);
	}
}
// ----
// Warning 6321: (80-83): Unnamed return parameter will never be set.
