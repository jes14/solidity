contract C {
  function f() internal returns (uint) {
    (uint a) = f();
    a;
  }
}
// ----
// Warning 6321: (46-50): Unnamed return parameter will never be set.
