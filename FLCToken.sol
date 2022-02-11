pragma solidity ^0.5.8;

import "./Context.sol";
import "./ITRC20.sol";
import "./BaseTRC20.sol";

contract FLCToken is ITRC20, TRC20Detailed {
    constructor(address gr) public TRC20Detailed("ZMILE", "ZML", 8){
        require(gr != address(0), "invalid gr");
        _mint(gr, 1900 * 1000 * 10 ** 8);
    }
}