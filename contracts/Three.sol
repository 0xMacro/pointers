// SPDX-License-Identifier: MIT

pragma solidity 0.4.19;

contract Three {

    uint x  = 5;
 
    struct Camper {
        bool isHappy;
    }
 
        mapping(uint => Camper) public campers;

    function getX() public view returns (uint) {
        return x;
    }
 
    function isHappy(uint index) public view returns (bool) {
        return campers[index].isHappy;
    }

    function setHappy(uint index) public {
        campers[index].isHappy = true;
    }

    function surprise(uint index) public {
        Camper storage c;
        c.isHappy = false;
        campers[index] = c;
    }
 
}

/*
  If we call:

  setHappy(2);
  surprise(2);
  isHappy(2);
  getX();

  what will isHappy(2) return?

  what will getX() return?
*/

