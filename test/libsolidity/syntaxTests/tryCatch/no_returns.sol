contract C {
    function f() public returns (uint, uint) {
        try this.f() {

        } catch {

        }
    }
}
// ----
// Warning 6321: (46-50): Unnamed return parameter will never be set.
