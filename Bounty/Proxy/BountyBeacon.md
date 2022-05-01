# Solidity API

## BountyBeacon

_UpgradeableBeacon holding the current bounty implementation referred to by all BeaconProxy bounties_

### constructor

```solidity
constructor(address _implementation) public
```

_Initializes an UpgradeableBeacon which will transmit the current implementation of Bounty to all BeaconProxy bounties_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _implementation | address | The initial implementation of Bounty |

