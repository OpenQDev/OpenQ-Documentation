# Solidity API

## BountyFactory

_Factory for deploying new BeaconProxy contracts for bounties. Holds BeaconBounty address passed to each bounty for retrieving their implementation_

### beacon

```solidity
address beacon
```

_The address of the UpgradeableBeacon holding the current bounty implementation_

### constructor

```solidity
constructor(address _openQ, address _beacon) public
```

_Deploys and initializes a new BeaconProxy with implementation pulled from BountyBeacon_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _openQ | address | The OpenQProxy address |
| _beacon | address | The UpgradeableBeacon &quot;BountyBeacon&quot; address |

### mintBounty

```solidity
function mintBounty(string _id, address _issuer, string _organization) external returns (address)
```

_Deploys and initializes a new BeaconProxy with implementation pulled from BountyBeacon_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _id | string | A unique string representing the bounty |
| _issuer | address | The creator of the mint transaction |
| _organization | string | The organization associated with the bounty |

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | address | address The address of the minted bounty |

### getBeacon

```solidity
function getBeacon() external view returns (address)
```

_Returns the BountyBeacon address_

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | address | address BountyBeacon address |

