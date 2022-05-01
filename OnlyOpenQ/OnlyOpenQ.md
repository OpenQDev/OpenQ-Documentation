# Solidity API

## OnlyOpenQ

_Restricts access for method calls to OpenQProxy address_

### _openQ

```solidity
address _openQ
```

_OpenQProxy address_

### __OnlyOpenQ_init

```solidity
function __OnlyOpenQ_init(address initalOpenQ) internal
```

_Initializes contract with OpenQProxy address_

| Name | Type | Description |
| ---- | ---- | ----------- |
| initalOpenQ | address | The OpenQProxy address |

### openQ

```solidity
function openQ() public view returns (address)
```

_Getter for the current OpenQProxy address_

### onlyOpenQ

```solidity
modifier onlyOpenQ()
```

_Modifier to restrict access of methods to OpenQProxy address_

