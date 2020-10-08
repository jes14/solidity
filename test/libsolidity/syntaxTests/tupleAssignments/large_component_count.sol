contract C {
	function g() public pure returns (
		uint,
		uint,
		uint,
		uint,
		uint,
		uint,
		uint,
		uint,
		uint,
		uint,
		uint,
		uint,
		uint
	) { }
	function f() public pure returns (uint, uint, bytes32) {
		uint a;
		uint b;
		(,,,,a,,,,b,,,,) = g();
	}
}
// ----
// Warning 6321: (194-198): Unnamed return parameter will never be set.
