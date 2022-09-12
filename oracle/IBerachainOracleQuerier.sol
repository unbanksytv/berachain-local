// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/// @title IBerachainOracleQuerier
/// @author Dev Bear <itsdevbear@berachain.com>
/// @notice We borrow semantics from Chainlink's V3Aggregator to give
///         developers a friendly and familiar interface to utilize
///         in their protocols
/// @notice The oracle is currently deployed at `0x0000000000000000000000000000000000000999` on the local devnet. 
interface IBerachainOracleQuerier {

    /// @notice Get the current value of the oracle
    /// @param ticker The "key" to lookup via.
    function latestRoundData(string calldata ticker)
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        );
}
