contract C {
    function (address payable) view internal returns (address payable) f;
    function g(function (address payable) payable external returns (address payable)) public payable returns (function (address payable) payable external returns (address payable)) {
        function (address payable) payable external returns (address payable) h; h;
    }
}
// ----
// Warning 6321: (197-267): Unnamed return parameter will never be set.
