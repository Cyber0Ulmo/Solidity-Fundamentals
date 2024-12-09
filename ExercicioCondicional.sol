// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;


contract ExercicioConstrutor {

    //Stage var

    string private storedInfo;

    address _owner;

    

    constructor (){
        _owner = msg.sender;
        storedInfo = "essa mensagem";
    }


    //functions

    function setInfo(string  memory newValue) external {
        if(msg.sender == _owner){
            storedInfo = newValue;
        } 
        require(msg.sender !=_owner, "you are not ADM");
    }

    function getInfo() external view returns(string memory currentValue){
        currentValue = storedInfo;
    }
    
}