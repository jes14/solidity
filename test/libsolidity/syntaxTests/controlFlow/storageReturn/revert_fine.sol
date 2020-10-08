contract C {
    struct S { bool f; }
    S s;
    function f() internal pure returns (S storage) {
        revert();
    }
    function g(bool flag) internal view returns (S storage c) {
        if (flag) c = s;
        else revert();
    }
}
// ----
// Warning 6321: (87-96): Unnamed return parameter will never be set.
