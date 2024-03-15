// SPDX-License-Identifier: BSD-3-Clause-Clear
pragma solidity ^0.8.0;

import {Script, console2} from "forge-std/Script.sol";
import {PondModel} from "../src/PondModel.sol";

contract CallContract is Script {
    function run() public {
        // Setup wallet
        uint256 deployerPrivateKey = 0x11177d60266809dc4ce56ad21c15ad8dce8590546c770706109e6b0d03c4f4a6;
        vm.startBroadcast(deployerPrivateKey);

        PondModel pm = PondModel(0x7e2bc30D03a8b49547671a98D92b96d56d9dB8e6);

        pm.pondModel();

        vm.stopBroadcast();
    }
}

