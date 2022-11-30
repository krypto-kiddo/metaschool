// simple ERC721 implementation example
// Code written by Krypto-Kiddo

// CODE BEGINS BELOW

pragma solidity ^0.8.9;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";

contract popNeon is ERC721("PopNeon","PNEO"){
    uint tokenId;
    mapping(address=>tokenMetaData[]) public ownershipRecord;

    struct tokenMetaData{
        uint tokenId;
        uint timeStamp;
        string tokenURI;
    }

    function mintToken(address recepient, string memory url) public {
        _safeMint(recepient, tokenId);
        ownershipRecord[recepient].push(tokenMetaData(tokenId, block.timestamp, url));
        tokenId = tokenId+1;
    }

     function transferToken(address to, address from, uint tokenid) public{
        safeTransferFrom(from, to, tokenid);
    } 

}

// END OF CODE
