pragma solidity ^0.5.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";


contract Pixcoin is ERC20, ERC20Detailed {
    // modify token name
    string public constant NAME = "Pixcoin";
    // modify token symbol
    string public constant SYMBOL = "PIXC";
    // modify token decimal
    uint8 public constant DECIMALS = 8;
    // modify initial token supply
    uint256 public constant INIT_SUPPLY = 10000000000 * (10**uint256(DECIMALS)); // 10 billion tokens
    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
    */
    constructor () public ERC20Detailed(NAME, SYMBOL, DECIMALS) {
        _mint(msg.sender, INIT_SUPPLY);
    }
}
