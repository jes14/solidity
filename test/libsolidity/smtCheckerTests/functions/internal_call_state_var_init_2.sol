pragma experimental SMTChecker;
contract c {
	uint x;
	function f() internal returns (uint) {
		x = x + 1;
	}
	bool b = (f() > 0) || (f() > 0);
}
// ----
// Warning 6321: (86-90): Unnamed return parameter will never be set.
