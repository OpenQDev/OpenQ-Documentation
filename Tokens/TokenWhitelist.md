# Solidity API

## TokenWhitelist

_OpenQTokenWhitelist provides the list of verified token addresses_

### TOKEN_ADDRESS_LIMIT

```solidity
uint256 TOKEN_ADDRESS_LIMIT
```

INITIALIZATION

### tokenCount

```solidity
uint256 tokenCount
```

### whitelist

```solidity
mapping(address &#x3D;&gt; bool) whitelist
```

### isWhitelisted

```solidity
function isWhitelisted(address tokenAddress) external view returns (bool)
```

_Determines if a tokenAddress is whitelisted_

| Name | Type | Description |
| ---- | ---- | ----------- |
| tokenAddress | address | The token address in question |

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool Whether or not tokenAddress is whitelisted |

### addToken

```solidity
function addToken(address tokenAddress) external
```

_Adds tokenAddress to the whitelist_

| Name | Type | Description |
| ---- | ---- | ----------- |
| tokenAddress | address | The token address to add |

### removeToken

```solidity
function removeToken(address tokenAddress) external
```

_Removes tokenAddress to the whitelist_

| Name | Type | Description |
| ---- | ---- | ----------- |
| tokenAddress | address | The token address to remove |

### setTokenAddressLimit

```solidity
function setTokenAddressLimit(uint256 newTokenAddressLimit) external
```

_Updates the tokenAddressLimit_

| Name | Type | Description |
| ---- | ---- | ----------- |
| newTokenAddressLimit | uint256 | The new value for TOKEN_ADDRESS_LIMIT |

