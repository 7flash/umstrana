pragma solidity ^0.4.23;

import "openzeppelin-solidity/contracts/token/ERC20/MintableToken.sol";
import "openzeppelin-solidity/contracts/ownership/rbac/RBAC.sol";

contract RBACMintableToken is MintableToken, RBAC {
	string public constant ROLE_MINTER = "minter";

	modifier hasMintPermission() {
		checkRole(msg.sender, ROLE_MINTER);
		_;
	}

	function addMinter(address _minter)
		onlyOwner public
	{
		addRole(_minter, ROLE_MINTER);
	}

	function removeMinter(address _minter)
		onlyOwner public
	{
		removeRole(_minter, ROLE_MINTER);
	}
}
