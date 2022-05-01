# Solidity API

## IOpenQ

_Interface declaring all OpenQ Events_

### BountyCreated

```solidity
event BountyCreated(string bountyId, string organization, address issuerAddress, address bountyAddress, uint256 bountyMintTime)
```

### BountyClosed

```solidity
event BountyClosed(string bountyId, address bountyAddress, string organization, address closer, uint256 bountyClosedTime)
```

### TokenDepositReceived

```solidity
event TokenDepositReceived(bytes32 depositId, address bountyAddress, string bountyId, string organization, address tokenAddress, uint256 receiveTime, address sender, uint256 expiration, uint256 volume)
```

### NFTDepositReceived

```solidity
event NFTDepositReceived(bytes32 depositId, address bountyAddress, string bountyId, string organization, address tokenAddress, uint256 receiveTime, address sender, uint256 expiration, uint256 tokenId)
```

### DepositRefunded

```solidity
event DepositRefunded(bytes32 depositId, string bountyId, address bountyAddress, string organization, uint256 refundTime)
```

### TokenBalanceClaimed

```solidity
event TokenBalanceClaimed(string bountyId, address bountyAddress, string organization, address closer, uint256 payoutTime, address tokenAddress, uint256 volume)
```

