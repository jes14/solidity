contract C {
    function f() public returns (uint, uint) {
        try this.f() returns (uint a, uint b) {
            a = 1;
            b = 2;
        } catch {

        }
    }
}
// ----
// Warning 6321: (46-50): Unnamed return parameter will never be set.
