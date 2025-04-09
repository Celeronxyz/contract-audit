// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import {IVault} from "./IVault.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IMultiRewardFarm {
    // User info
    struct UserInfo {
        uint256 amount;
        mapping(IERC20 => uint256) rewardDebt;
    }

    // User's rewards
    struct UserRewardInfo {
        IERC20 token;
        uint256 debt;
    }

    // The user of pool info
    struct PoolUserInfo {
        uint256 pid;
        uint256 amount;
        UserRewardInfo[] rewards;
    }

    // Pool info
    struct PoolInfo {
        address assets;
        uint256 allocPoint;
        uint256 amount;
        uint256 withdrawFee;
        uint256 lastRewardTime;
        mapping(IERC20 => uint256) acctPerShare;
        IVault vault;
        RewardInfo[] rewards;
    }

    // Pool info for UI
    struct PoolInfoDTO {
        address assets;
        uint256 allocPoint;
        uint256 amount;
        uint256 withdrawFee;
        uint256 lastRewardTime;
        AcctPerShareInfo[] acctPerShare;
        IVault vault;
        RewardInfo[] rewards;
    }

    // Account per share
    struct AcctPerShareInfo {
        IERC20 token;
        uint256 acctPerShare;
    }

    // Reward info
    struct RewardInfo {
        IERC20 token;
        uint256 tokenPerBlock;
    }

    // Pool TVL
    struct PoolTvl {
        uint256 pid;
        address assets;
        uint256 tvl;
    }

    // User revenue info
    struct UserRevenueInfo {
        IERC20 token;
        uint256 totalUserRevenue;
    }
}
