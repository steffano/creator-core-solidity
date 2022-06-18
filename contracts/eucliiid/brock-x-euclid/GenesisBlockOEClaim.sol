// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @author: eucliiid.xyz

/////////////////////////////////////////////////////////////////////////////////////////
//        ▐▄,                                                                     ,    //      
//         ██▄ ▐▄⌐╓▓L                                                            ]C    //            
//          █████████                                          ▄▄         ▄▄▄██▄▄▌     //                
//      ▄████████████                     ▄█               ▄▄████        ████▀████▄    //            
//    ▐██████████████M    ,▄▄▄▄▄ç         ███⌐        ▄▄█████████       ████▌,██████   //           
//    ▐██████▄▄ '▀███⌐  4▀▀▀▀▀▀▀└        ┌████         -▀▀▀█████▌       ██████▀  ▀▀▀   //           
//     █████████▄   -                    ██████            █████   ,█    ▀█████▄       //          
//      '▀████████.   ▄▄█████████▄      ████████          █████▀  ███     ███████      //         
//         └███████  '▀'▀▀▀▀▀▀▀▀└      ███"█████▌     ]█▄█████═  ¬███    ▄█▀ └███      //        
//  ▐█▄      ▀█████▌                  ▄██-  ██████     ▀█████▄▄▄▄▄████  ▄█"   ███      //         
//  ▀██▄     ▄█████'  ,▄▄█████████▄  ,██▄▄▄▄▄██████▄,  ████████████▀███▄█-   ▄██▌      //         
//    ▀███████████" ,███████████████████████████▀▀██████▀▀          ╙██████████▀       //         
//       ¬▀▀▀▀▀"             ▄▄███▀▀▀▀▀¬            "▀-              ▐█▀▀███▀└         //       
//                        .═▀└                                      ╒█`                //     
//                                                                  Å                  //  
/////////////////////////////////////////////////////////////////////////////////////////

import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@manifoldxyz/libraries-solidity/contracts/access/AdminControlUpgradeable.sol";

import "../../eucliiid/xEUCLiD.sol";
import "../../extensions/ERC721/ERC721NumberedEdition.sol";

contract GenesisBlockOEClaim is ERC721NumberedEdition {
    xEUCLiD public xE;
    function mint(address recipient, uint16 count) external override adminRequired {
        require(xE.balanceOf(msg.sender) == 0, "One claim per person.");
        return _mint(msg.sender, 1);
    }   

    /**
     * @dev See {ICreatorExtensionBasic-setTokenURI}.
     */
    // function setTokenURI(address creator, uint256 tokenId, string calldata uri) external virtual override adminRequired {
    //     require(ERC165Checker.supportsInterface(creator, type(ICreatorCore).interfaceId), "Requires creator to implement CreatorCore");
    //     ICreatorCore(creator).setTokenURIExtension(tokenId, uri);
    // }

    /**
     * @dev See {ICreatorExtensionBasic-setTokenURIPrefix}.
     */
    // function setTokenURIPrefix(address creator, string calldata prefix) external override adminRequired {
    //     require(ERC165Checker.supportsInterface(creator, type(ICreatorCore).interfaceId), "Requires creator to implement CreatorCore");
    //     ICreatorCore(creator).setTokenURIPrefixExtension(prefix);
    // }
}