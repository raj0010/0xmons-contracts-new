// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity ^0.6.1;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "./UsesMon.sol";

interface IMonMinter is IERC721, UsesMon {

  function mintMonster(address to,
                       uint256 parent1,
                       uint256 parent2,
                       uint256 gen,
                       uint256 bits,
                       uint256 exp,
                       uint256 rarity
                      ) external returns (uint256);

  function modifyMon(uint256 id,
                     bool ignoreZeros,
                     uint256 parent1,
                     uint256 parent2,
                     uint256 gen,
                     uint256 bits,
                     uint256 exp,
                     uint256 rarity
  ) external;

  function monRecords(uint256 id) external returns (Mon memory);
}