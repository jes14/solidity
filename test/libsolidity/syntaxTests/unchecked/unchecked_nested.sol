contract C {
    function f() public pure {
        unchecked {
            unchecked {
                uint x = 2 + 3;
            }
        }
    }
}
// ----
// ParserError 6933: (57-66): Expected primary expression.
