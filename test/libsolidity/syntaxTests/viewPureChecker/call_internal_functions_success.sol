contract C {
    function g() pure public { g(); }
    function f() view public returns (uint) { f(); g(); }
    function h() public { h(); g(); f(); }
    function i() payable public { i(); h(); g(); f(); }
}
// ----
// Warning 6321: (89-93): Unnamed return parameter will never be set.
