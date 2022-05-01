# Solidity API

## Initializable

_This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
behind a proxy. Since proxied contracts do not make use of a constructor, it&#x27;s common to move constructor logic to an
external initializer function, usually called &#x60;initialize&#x60;. It then becomes necessary to protect this initializer
function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.

TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
possible by providing the encoded function call as the &#x60;_data&#x60; argument to {ERC1967Proxy-constructor}.

CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.

[CAUTION]
&#x3D;&#x3D;&#x3D;&#x3D;
Avoid leaving a contract uninitialized.

An uninitialized contract can be taken over by an attacker. This applies to both a proxy and its implementation
contract, which may impact the proxy. To initialize the implementation contract, you can either invoke the
initializer manually, or you can include a constructor to automatically mark it as initialized when it is deployed:

[.hljs-theme-light.nopadding]
&#x60;&#x60;&#x60;
/// @custom:oz-upgrades-unsafe-allow constructor
constructor() initializer {}
&#x60;&#x60;&#x60;
&#x3D;&#x3D;&#x3D;&#x3D;_

### _initialized

```solidity
bool _initialized
```

_Indicates that the contract has been initialized._

### _initializing

```solidity
bool _initializing
```

_Indicates that the contract is in the process of being initialized._

### initializer

```solidity
modifier initializer()
```

_Modifier to protect an initializer function from being invoked twice._

### onlyInitializing

```solidity
modifier onlyInitializing()
```

_Modifier to protect an initialization function so that it can only be invoked by functions with the
{initializer} modifier, directly or indirectly._

### _isConstructor

```solidity
function _isConstructor() private view returns (bool)
```

