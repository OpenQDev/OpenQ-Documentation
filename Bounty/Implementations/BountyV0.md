# Solidity API

## BountyV0

_Bounty Implementation Version 0_

### constructor

```solidity
constructor() public
```

INITIALIZATION

### initialize

```solidity
function initialize(string _bountyId, address _issuer, string _organization, address _openQ) external
```

_Initializes a bounty proxy with initial state_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _bountyId | string | The unique bountyId |
| _issuer | address | The sender of the mint bounty transaction |
| _organization | string | The organization that owns the bounty |
| _openQ | address | The OpenQProxy address |

### receiveFunds

```solidity
function receiveFunds(address _funder, address _tokenAddress, uint256 _volume, uint256 _expiration) external payable returns (bytes32, uint256)
```

_Creates a deposit and transfers tokens from msg.sender to self_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _funder | address | The funder address |
| _tokenAddress | address | The ERC20 token address (ZeroAddress if funding with protocol token) |
| _volume | uint256 | The volume of token to transfer |
| _expiration | uint256 | The duration until the deposit becomes refundable |

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bytes32 | (depositId, volumeReceived) Returns the deposit id and the amount transferred to bounty |
| [1] | uint256 |  |

### receiveNft

```solidity
function receiveNft(address _sender, address _tokenAddress, uint256 _tokenId, uint256 _expiration) external returns (bytes32)
```

_Creates a deposit and transfers NFT from msg.sender to self_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _sender | address | The funder address |
| _tokenAddress | address | The ERC721 token address of the NFT |
| _tokenId | uint256 | The tokenId of the NFT to transfer |
| _expiration | uint256 | The duration until the deposit becomes refundable |

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bytes32 | depositId |

### refundDeposit

```solidity
function refundDeposit(bytes32 _depositId, address _funder) external
```

_Transfers volume of deposit or NFT of deposit from bounty to funder_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _depositId | bytes32 | The deposit to refund |
| _funder | address | The initial funder of the deposit |

### claimBalance

```solidity
function claimBalance(address _payoutAddress, address _tokenAddress) external returns (uint256)
```

_Transfers full balance of _tokenAddress from bounty to _payoutAddress_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _payoutAddress | address | The destination address for the fund |
| _tokenAddress | address | A unique string to identify a bounty |

### claimNft

```solidity
function claimNft(address _payoutAddress, bytes32 _depositId) external
```

_Transfers NFT from bounty address to _payoutAddress_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _payoutAddress | address | The destination address for the NFT |
| _depositId | bytes32 | The payout address of the bounty |

### close

```solidity
function close(address _payoutAddress) external
```

_Changes bounty status from 0 (OPEN) to 1 (CLOSEd)_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _payoutAddress | address | The closer of the bounty |

### _receiveERC20

```solidity
function _receiveERC20(address _tokenAddress, address _funder, uint256 _volume) internal returns (uint256)
```

_Receives _volume of ERC20 at _tokenAddress from _funder to bounty address_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _tokenAddress | address | The ERC20 token address |
| _funder | address | The funder of the bounty |
| _volume | uint256 | The volume of token to transfer |

### _transferERC20

```solidity
function _transferERC20(address _tokenAddress, address _payoutAddress, uint256 _volume) internal
```

_Transfers _volume of ERC20 at _tokenAddress from bounty address to _funder_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _tokenAddress | address | The ERC20 token address |
| _payoutAddress | address | The destination address of the funds |
| _volume | uint256 | The volume of token to transfer |

### _transferProtocolToken

```solidity
function _transferProtocolToken(address _payoutAddress, uint256 _volume) internal
```

_Transfers _volume of protocol token from bounty address to _payoutAddress_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _payoutAddress | address | The destination address of the funds |
| _volume | uint256 | The volume of token to transfer |

### _receiveNft

```solidity
function _receiveNft(address _tokenAddress, address _sender, uint256 _tokenId) internal
```

_Receives NFT of _tokenId on _tokenAddress from _funder to bounty address_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _tokenAddress | address | The ERC721 token address |
| _sender | address | The sender of the NFT |
| _tokenId | uint256 | The tokenId |

### _transferNft

```solidity
function _transferNft(address _tokenAddress, address _payoutAddress, uint256 _tokenId) internal
```

_Transfers NFT of _tokenId on _tokenAddress from bounty address to _payoutAddress_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _tokenAddress | address | The ERC721 token address |
| _payoutAddress | address | The sender of the NFT |
| _tokenId | uint256 | The tokenId |

### _generateDepositId

```solidity
function _generateDepositId() internal view returns (bytes32)
```

_Generates a unique deposit ID from bountyId and the current length of deposits_

### getERC20Balance

```solidity
function getERC20Balance(address _tokenAddress) public view returns (uint256 balance)
```

_Returns the ERC20 balance for this bounty address_

| Name | Type | Description |
| ---- | ---- | ----------- |
| _tokenAddress | address | The ERC20 token address |

| Name | Type | Description |
| ---- | ---- | ----------- |
| balance | uint256 | The ERC20 balance for this bounty address |

### getDeposits

```solidity
function getDeposits() external view returns (bytes32[])
```

_Returns an array of all deposits (ERC20, protocol token, and NFT) for this bounty_

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bytes32[] | deposits The array of deposits including ERC20, protocol token, and NFT |

### getNftDeposits

```solidity
function getNftDeposits() external view returns (bytes32[])
```

_Returns an array of ONLY NFT deposits for this bounty_

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bytes32[] | nftDeposits The array of NFT deposits |

### getTokenAddresses

```solidity
function getTokenAddresses() public view returns (address[])
```

_Returns an array of all ERC20 token addresses which have funded this bounty_

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | address[] | tokenAddresses An array of all ERC20 token addresses which have funded this bounty |

### receive

```solidity
receive() external payable
```

_receive() method to accept protocol tokens_

### onERC721Received

```solidity
function onERC721Received(address, address, uint256, bytes) external pure returns (bytes4)
```

_Override of IERC721ReceiverUpgradeable.onERC721Received(address,address,uint256,bytes) to enable receiving NFTs_

### fallback

```solidity
fallback() external
```

_Reverts any attempt to send unknown calldata_

