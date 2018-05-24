pragma solidity ^0.4.23;

import "./RBACMintableToken.sol";

contract Token is RBACMintableToken {
	string public constant name = "Brilliant";
	string public constant symbol = "BRL";
	uint8 public constant decimals = 18;
}
