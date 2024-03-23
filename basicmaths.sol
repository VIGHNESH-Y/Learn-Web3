
pragma solidity ^0.8.0;

contract MathOperations {
    
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
    
    function subtract(uint256 a, uint256 b) public pure returns (uint256) {
        require(a >= b, "Subtraction result would be negative");
        return a - b;
    }
}
