// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract pokar{
    bool[13][4] public card;
    function first(uint row,uint col,bool value) public {
        card[row][col]=value;
    }
    function second(bool[13][4] memory prevcard) public {
        
    }
}