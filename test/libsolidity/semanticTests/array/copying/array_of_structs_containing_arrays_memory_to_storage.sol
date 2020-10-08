pragma experimental ABIEncoderV2;

contract C {
    struct S {
        uint136 p;
        bytes a;
        uint128[3] b;
        uint128[] c;
    }

    S[] s;

    function f() external returns (uint256, uint256, byte, uint128, uint128) {
        S[] memory m = new S[](3);
        m[1] = S(0, "abcd", [uint128(1), 2, 3], new uint128[](3));
        m[1].c[0] = 1;
        m[1].c[1] = 2;
        m[1].c[2] = 3;
        s = m;
        assert(s.length == m.length);
        assert(s[1].a[2] == m[1].a[2]);
        assert(s[1].b[1] == m[1].b[1]);
        assert(s[1].c[0] == m[1].c[0]);
        return (s[1].a.length, s[1].c.length, s[1].a[1], s[1].b[2], s[1].c[0]);
    }
}
// ====
// compileViaYul: also
// ----
// f() -> 4, 3, "b", 3, 1