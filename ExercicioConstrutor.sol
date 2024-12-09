// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;


contract ExercicioConstrutor {

    //Stage var

    string private storedInfo;


    constructor (){
        storedInfo = "essa mensagem";
    }


    //functions

    function setInfo(string  memory newValue) external {
    storedInfo = newValue;
    }

    function getInfo() external view returns(string memory currentValue){
        currentValue = storedInfo;
    }
    
}