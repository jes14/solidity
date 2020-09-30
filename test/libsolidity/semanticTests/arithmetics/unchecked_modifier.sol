contract C {
    modifier m() {
        // This does not make f unchecked!
        unchecked { _; }
    }
    function f(uint a, uint b) m public returns (uint) {
        return a - b;
    }
}
// ====
// compileViaYul: also
// ----
// f(uint256,uint256): 4, 3 -> 1
// f(uint256,uint256): 3, 4 -> FAILURE
