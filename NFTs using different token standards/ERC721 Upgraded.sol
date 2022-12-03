// This is just the previous ERC721.sol contract but it has been upgraded to the ERC721A Azuki standard
// Code written by Krypto-Kiddo

// If its what we got, then why not give it all we got.

// CODE BEGINS BELOW

pragma solidity ^0.8.9;

// import "https://github.com/OpenZeppelin/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";
import "erc721a/contracts/ERC721A.sol";

contract popNeon is ERC721A("PopNeon","PNEO"){
    // uint tokenId;  // Wont need this since IDs start from 0 and are auto-incremented in Azuki standard
    
    // mapping(address=>tokenMetaData[]) public ownershipRecord;
    
    mapping(address=>tokenMetaData[]) public ownershipRecord; 

    // I'm assuming TokenURIs are taken care of
     struct tokenMetaData{
        uint quantity;
        uint timeStamp;
        // string tokenURI;
    } 


    function mintToken(uint256 qty) public {
        _safeMint(msg.sender, qty);
        ownershipRecord[msg.sender].push(tokenMetaData(qty, block.timestamp));
        // tokenId = tokenId+1;
    }

     function transferToken(address to, address from, uint256 qty) public{
        safeTransferFrom(from, to, qty);
    } 

}

// END OF CODE
