// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/***
* @title Celeron Token
**/
contract CelToken is ERC20, Ownable {

    // @dev Total token supply
    uint256 public constant TOTAL_SUPPLY = 700000000 * 1e18;

    constructor(string memory name, string memory symbol, address _owner)
    ERC20(name, symbol)
    Ownable(_owner){
        _mint(_owner, TOTAL_SUPPLY);
    }
}
