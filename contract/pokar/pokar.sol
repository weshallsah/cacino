// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract pokar{
    bool[13][4] public card;
    function pickcard() public returns(uint16,uint256,uint16,uint256) {
        uint256 random = uint256(keccak256(abi.encodePacked(block.timestamp)))%1000000;
        uint16 suit = uint16(random %100);
        random /=100;
        card[suit%4][random%13] = true;
        uint16 suit1=suit%4;
        uint256 card1=random%13;
        suit/=10;
        random/=100;
        card[suit%4][random%13] = true;
        return (suit1,card1,suit,random);
    }
    // function second(bool[13][4] memory prevcard) public {
        
    // }
}