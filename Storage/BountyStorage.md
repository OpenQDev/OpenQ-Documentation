# Solidity API

## BountyStorageV0

_Backwards compatible, append-only chain of storage contracts inherited by Bounty implementations_

### bountyId

```solidity
string bountyId
```

_Bounty data_

### bountyCreatedTime

```solidity
uint256 bountyCreatedTime
```

### bountyClosedTime

```solidity
uint256 bountyClosedTime
```

### issuer

```solidity
address issuer
```

### organization

```solidity
string organization
```

### closer

```solidity
address closer
```

### status

```solidity
uint256 status
```

### nftDepositLimit

```solidity
uint256 nftDepositLimit
```

### funder

```solidity
mapping(bytes32 &#x3D;&gt; address) funder
```

_Deconstructed deposit struct_

### tokenAddress

```solidity
mapping(bytes32 &#x3D;&gt; address) tokenAddress
```

### volume

```solidity
mapping(bytes32 &#x3D;&gt; uint256) volume
```

### depositTime

```solidity
mapping(bytes32 &#x3D;&gt; uint256) depositTime
```

### refunded

```solidity
mapping(bytes32 &#x3D;&gt; bool) refunded
```

### payoutAddress

```solidity
mapping(bytes32 &#x3D;&gt; address) payoutAddress
```

### tokenId

```solidity
mapping(bytes32 &#x3D;&gt; uint256) tokenId
```

### expiration

```solidity
mapping(bytes32 &#x3D;&gt; uint256) expiration
```

### isNFT

```solidity
mapping(bytes32 &#x3D;&gt; bool) isNFT
```

### deposits

```solidity
bytes32[] deposits
```

_Array of depositIds_

### nftDeposits

```solidity
bytes32[] nftDeposits
```

### tokenAddresses

```solidity
struct EnumerableSetUpgradeable.AddressSet tokenAddresses
```

_Set of unique token address_

## BountyStorageV1

UPGRADE DUMMIES

### newFoo

```solidity
uint256 newFoo
```

