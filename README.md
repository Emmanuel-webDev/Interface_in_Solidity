Explain interfaces in solidity programming
--------------------------------------------


In Solidity, interfaces are used to define how contracts can interact with each other without needing to know the full internal logic of the contract they are calling. They act like a blueprint or contract-to-contract API.

✅ What is an Interface?
An interface in Solidity:

Only contains function declarations (no implementation).

Helps one contract call functions from another contract.

Makes contracts more modular, testable, and upgradeable.

✅ Key Rules for Interfaces
Functions must be external.

Cannot have constructors, state variables, or function bodies.

Cannot inherit from other contracts.

✅ Example
Using  a contract that stores and returns a number:

// Deployed contract
contract Interface {
    uint256 public num;

    function set(uint256 _value) external {
        num = _value;
    }

    function get() external view returns (uint256) {
        return num;
    }
}
Contract to interact with the first contract using an interface:

// Interface for Interface
interface Operation {
    function set(uint _Val) external;
    function get() external view returns (uint);
}

// Interacting contract
contract DataCaller {
   Operation internal intfce = Operation(0xEbe8FD671b8f3f1B87BB63604c1AAcc368e2Fe58);

    function callSetData(uint _data) external {
        intfce.set(_data);
    }

    function callGetData() external view returns (uint) {
        return intfce.get();
    }
}
✅ Why Use Interfaces?
Interoperability: Call external contracts like Chainlink, Uniswap, ERC20 tokens, etc.

Code organization: Keeps logic separated.

Efficiency: No need to import full contract code.
