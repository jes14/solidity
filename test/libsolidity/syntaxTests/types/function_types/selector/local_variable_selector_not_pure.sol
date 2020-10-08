contract C {
    function f() public pure returns (bytes4) {
        function() external g;
        // Make sure g.selector is not considered pure:
        // If it was considered pure, this would emit a warning "Statement has no effect".
        g.selector;
    }
}
// ----
// Warning 6321: (51-57): Unnamed return parameter will never be set.
