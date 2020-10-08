contract C {
    function f() public returns (uint[] memory, uint) {
        try this.f() returns (uint[] memory, uint) {

        } catch {

        }
    }
}
// ====
// EVMVersion: >=byzantium
// ----
// Warning 6321: (46-59): Unnamed return parameter will never be set.
