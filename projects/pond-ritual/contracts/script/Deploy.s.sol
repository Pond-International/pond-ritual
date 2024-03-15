// SPDX-License-Identifier: BSD-3-Clause-Clear
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {PondModel} from "../src/PondModel.sol";

contract Deploy is Script {
    function run() public {
        // Setup wallet
        uint256 deployerPrivateKey = 0x11177d60266809dc4ce56ad21c15ad8dce8590546c770706109e6b0d03c4f4a6;
        vm.startBroadcast(deployerPrivateKey);

        // Log address
        address deployerAddress = vm.addr(deployerPrivateKey);
        console2.log("Loaded deployer: ", deployerAddress);

        address coordinator = 0x8D871Ef2826ac9001fB2e33fDD6379b6aaBF449c;
        // Create consumer
        PondModel pm = new PondModel(coordinator);
        console2.log("Deployed pondModel: ", address(pm));

        // Execute
        vm.stopBroadcast();
        vm.broadcast();
    }
}
