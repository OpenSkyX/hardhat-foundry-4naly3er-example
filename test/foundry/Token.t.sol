// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Test.sol";

import "../../src/Token.sol";

contract TokenTest is Test {
    Token t;

    address alice = address(1);

    function setUp() public {
        t = new Token(100000000 ether);
    }

    function testName() public {
        assertEq(t.name(), "Gold");
    }
}
