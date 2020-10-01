contract C {
    modifier m() { unchecked { _; } }
}
// ----
// ParserError 6933: (57-66): Expected primary expression.
