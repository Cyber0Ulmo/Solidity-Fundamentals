// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract ExemploArray{
    
    uint[5] public arrayStatic;

    uint[] public arrayDinamic;

    event ExemploArray_RemovendoIndice(uint256 _ultimo);

    function addValue(uint256 _value) external {
        arrayDinamic.push(_value);
    }

    function removeValue() external{
        uint256 _ultimo = arrayDinamic[arrayDinamic.length -1];
        arrayDinamic.pop();

        emit ExemploArray_RemovendoIndice(_ultimo);
    }

    function getArrayIndex(uint256 _index) external view returns (uint256 indexToReturn){
        indexToReturn = arrayDinamic[_index];
    }

}