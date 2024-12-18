// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

contract ExercicioArray{

    uint[] _arrayDinamic;

    event ExercicioArray_valuesAddArray(uint256 value );


    //function
     function addValue(uint256 _value) external {
        _arrayDinamic.push(_value);

        emit ExercicioArray_valuesAddArray(_value);
    }

    function getArrayIndex(uint256 _index) external view returns (uint256 indexToReturn){
        indexToReturn = _arrayDinamic[_index];
    }

    function getAllArray() external view returns(uint256[] memory memoryArray){
        memoryArray = _arrayDinamic;
    }
}