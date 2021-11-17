// SPDX-License-Identifier: MIT

pragma solidity 0.4.19;

contract One {
 
    uint x = 100;
 
    function getXAndY() public view returns(uint, uint) {
        uint y = 101;
        return (x,y);
    }
}

/* What will getXandY() return? */

