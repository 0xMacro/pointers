// SPDX-License-Identifier: MIT

pragma solidity 0.4.19;

contract Two {
 
    struct Camper {
        bool isHappy;
    }
 
    mapping(uint => Camper) public campers;
 
    function isHappy(uint index) public view returns (bool) {
        return campers[index].isHappy;
    }

    function setHappy(uint index) public {
        campers[index].isHappy = true;
    }

    function surprise(uint index) public {
        Camper c = campers[index];
        c.isHappy = false;
    }
 
}

/*
  If we call:

  setHappy(2);
  surprise(2);
  isHappy(2);


  what will isHappy(2) return?
*/

