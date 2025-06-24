// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Operation {
    function set(uint256 _val) external;
    function get() external view returns (uint256);
}

contract DataCaller {
    Operation internal intfce = Operation(0xEbe8FD671b8f3f1B87BB63604c1AAcc368e2Fe58);

    function callSetData(uint _data) external {
        intfce.set(_data);
    }

    function callGetData() external view returns (uint) {
        return intfce.get();
    }
}