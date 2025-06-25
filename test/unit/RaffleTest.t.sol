// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test, console} from "forge-std/Test.sol";
import {DeployRaffle} from "script/DeployRaffle.s.sol";
import {Raffle} from "src/Raffle.sol";
import {HelperConfig} from "script/HelperConfig.s.sol";

contract RaffleTest is Test {
    Raffle public raffle;
    HelperConfig public helperConfig;

    address PLAYER = makeAddr("player");
    uint256 constant PLAYER_STARTING_BALANCE = 10 ether;

    function setUp() external {
        DeployRaffle deployer = new DeployRaffle();

        (raffle, helperConfig) = deployer.deployContract();
    }
}
