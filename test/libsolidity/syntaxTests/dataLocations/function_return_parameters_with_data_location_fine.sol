contract C {
    function f() private pure returns(uint[] memory, uint[] storage b) { b = b; }
    function g() internal pure returns(uint[] memory, uint[] storage b) { b = b; }
    function h() public pure returns(uint[] memory) {}
    function i() external pure returns(uint[] memory) {}
}
// ----
// Warning 6321: (51-64): Unnamed return parameter will never be set.
// Warning 6321: (134-147): Unnamed return parameter will never be set.
