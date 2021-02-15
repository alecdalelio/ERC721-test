pragma solidity ^0.7;

import '@openzeppelin/contracts/token/ERC721/ERC721.sol';

contract MyNFT1 is ERC721 {
    constructor() ERC721('My NFT', 'MYNFT') {}
}


contract MyNFT2 is ERC721 {
    constructor() ERC721('My NFT', 'MYNFT') {
        _safeMint(msg.sender, 0);
        _safeMint(msg.sender, 1);
        _safeMint(msg.sender, 2);
    }
}


contract MyNFT3 is ERC721 {
    address public admin;
    
    constructor() ERC721('My NFT', 'MYNFT') {
        admin = msg.sender;
    }

    function mint(address to, uint tokenId) external {
        require(msg.sender == admin, 'only admin');
        _safeMint(to, tokenId);
    }
}

contract MyNFT4 is ERC721 {    
    constructor() ERC721('My NFT', 'MYNFT') {
    }

    function faucet(address to, uint tokenId) external {
        _safeMint(to, tokenId);
    }
}