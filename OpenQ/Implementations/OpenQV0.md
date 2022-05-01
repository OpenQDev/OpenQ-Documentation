# Solidity API

## OpenQV0

_Main administrative contract for all bounty operations_

### constructor

```solidity
constructor() public
```

INITIALIZATION

### initialize

```solidity
function initialize(address oracle) external
```

_Initializes the OpenQProxy storage with necessary storage variables like oracle and owner_

| Name | Type | Description |
| ---- | ---- | ----------- |
| oracle | address | The oracle address to be used for onlyOracle methods (e.g. claimBounty) |

### setBountyFactory

```solidity
function setBountyFactory(address _bountyFactory) external
```

_Sets bountyFactory address_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _bountyFactory | address | The BountyFactory address |

### setTokenWhitelist

```solidity
function setTokenWhitelist(address _openQTokenWhitelist) external
```

_Sets openQTokenWhitelist address_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _openQTokenWhitelist | address | The OpenQTokenWhitelist address |

### transferOracle

```solidity
function transferOracle(address _newOracle) external
```

_Exposes internal method Oraclize._transferOracle(address) restricted to onlyOwner called via proxy_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _newOracle | address | The new oracle address |

### mintBounty

```solidity
function mintBounty(string _bountyId, string _organization) external returns (address)
```

_Mints a new bounty BeaconProxy using BountyFactory_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _bountyId | string | A unique string to identify a bounty |
| _organization | string | The ID of the organization which owns the bounty |

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | address | bountyAddress The address of the bounty minted |

### fundBountyToken

```solidity
function fundBountyToken(string _bountyId, address _tokenAddress, uint256 _volume, uint256 _expiration) external payable
```

_Transfers protocol token or ERC20 from msg.sender to bounty address_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _bountyId | string | A unique string to identify a bounty |
| _tokenAddress | address | The ERC20 token address (ZeroAddress if funding with protocol token) |
| _volume | uint256 | The volume of token transferred |
| _expiration | uint256 | The duration until the deposit becomes refundable |

### fundBountyNFT

```solidity
function fundBountyNFT(string _bountyId, address _tokenAddress, uint256 _tokenId, uint256 _expiration) external
```

_Transfers NFT from msg.sender to bounty address_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _bountyId | string | A unique string to identify a bounty |
| _tokenAddress | address | The ERC721 token address of the NFT |
| _tokenId | uint256 | The tokenId of the NFT to transfer |
| _expiration | uint256 | The duration until the deposit becomes refundable |

### claimBounty

```solidity
function claimBounty(string _bountyId, address _closer) external
```

_Transfers full balance of bounty and any NFT deposits from bounty address to closer_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _bountyId | string | A unique string to identify a bounty |
| _closer | address | The payout address of the bounty |

### refundDeposit

```solidity
function refundDeposit(string _bountyId, bytes32 _depositId) external
```

_Refunds an individual deposit from bountyAddress to sender if expiration time has passed_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _bountyId | string | A unique string to identify a bounty |
| _depositId | bytes32 | The depositId assocaited with the deposit being refunded |

### isWhitelisted

```solidity
function isWhitelisted(address _tokenAddress) public view returns (bool)
```

_Checks if _tokenAddress is whitelisted_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _tokenAddress | address | The token address in question |

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool True if _tokenAddress is whitelisted |

### bountyIsOpen

```solidity
function bountyIsOpen(string _bountyId) public view returns (bool)
```

_Checks if bounty associated with _bountyId is open_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _bountyId | string | The token address in question |

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool True if _bountyId is associated with an open bounty |

### bountyAddressToBountyId

```solidity
function bountyAddressToBountyId(address _bountyAddress) external view returns (string)
```

_Retrieves bountyId from a bounty&#x27;s address_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _bountyAddress | address | The bounty address |

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | string | string The bounty id associated with _bountyAddress |

### _authorizeUpgrade

```solidity
function _authorizeUpgrade(address) internal
```

_Override for UUPSUpgradeable._authorizeUpgrade(address newImplementation) to enforce onlyOwner upgrades_

### getImplementation

```solidity
function getImplementation() external view returns (address)
```

_Override for ERC1967Upgrade._getImplementation() to expose implementation_

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | address | address Implementation address associated with OpenQProxy |

