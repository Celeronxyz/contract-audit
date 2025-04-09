// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

interface IVault {
    /// @notice Deposit assets to the vault
    /// @param _userAddr User address
    /// @param _amount Deposit amount
    function depositToVault(address _userAddr, uint256 _amount) external payable returns (uint256);

    /// @notice Withdraw assets from the vault
    /// @param _userAddr User Address
    /// @param _amount Withdrawal Amount
    /// @param _withdrawFee Withdrawal fee
    function withdrawFromVault(address _userAddr, uint256 _amount, uint256 _withdrawFee) external returns (uint256);

    /// @notice Return vault balance, included the strategy balance if has
    /// @return Vault balance
    function balance() external view returns (uint256);

    /// @notice Return only the vault balance
    /// @return Vault balance
    function vaultBalance() external view returns (uint256);
}
