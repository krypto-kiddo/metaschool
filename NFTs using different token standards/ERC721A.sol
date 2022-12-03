// A demonstration/overview of what is different in ERC721A
// TIL that ERC721A was built by Azuki. And the optimizations look hella clean. 

// I might have come across as clingy today (maybe I was, a bit) but not as much as you think probably. 

// Code written by Krypto-Kiddo

// CODE BEGINS BELOW

pragma solidity ^0.8.9;

import "erc721a/contracts/ERC721A.sol";

contract Azuki is ERC721A {
    
    constructor() ERC721A("Azuki","AZUKI") {}
    
    function mint(uint256 quantity) external payable {
        // _safeMint's second argument takes in a quantity, not a tokenID as the traditional ERC721
        // ERC721A allows to mint multiple NFTS for the price of one.
        _safeMint(msg.sender, quantity);
    }
}

// END OF CODE
