// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;

import {OFT} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFT.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract AgaTech is OFT {
    constructor(address _layerZeroEndpoint, address _owner)
        OFT("AgaTech", "AGATA", _layerZeroEndpoint, _owner)
        Ownable(_owner)
    {
        _mint(_owner, 10000000 * 10**decimals());
    }
}
