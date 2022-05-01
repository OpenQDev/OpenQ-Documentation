# Solidity API

## Oraclize

_Restricts access for method calls to Oracle address_

### _oracle

```solidity
address _oracle
```

_Oracle address_

### OracleTransferred

```solidity
event OracleTransferred(address previousOracle, address newOracle)
```

_Oracle address_

### __Oraclize_init

```solidity
function __Oraclize_init(address _initialOracle) internal
```

_Initializes child contract with _initialOracle. Only callabel during initialization._

| Name | Type | Description |
| ---- | ---- | ----------- |
| _initialOracle | address | The initial oracle address |

### _transferOracle

```solidity
function _transferOracle(address newOracle) internal virtual
```

_Transfers oracle of the contract to a new account (&#x60;newOracle&#x60;).
Internal function without access restriction._

### oracle

```solidity
function oracle() external view virtual returns (address)
```

_Returns the address of _oracle_

### onlyOracle

```solidity
modifier onlyOracle()
```

_Modifier to restrict access of methods to _oracle address_

