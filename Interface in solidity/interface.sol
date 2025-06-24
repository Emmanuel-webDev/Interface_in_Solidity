// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Interface {
    uint256 public num;

    function set(uint256 _value) external  {
          num = _value;
    }

    function get() external view returns (uint256){
        return num;
      }
}