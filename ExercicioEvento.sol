// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

error MyContract_NotTheOwner(address caller, address owner);

contract ExercicioEvento {
    //Stage var

    string private s_storedInfo;
    address _owner;
    
    event ExercicoEvento_setInfoChanged(string newInfo);

    constructor (){
        _owner = msg.sender;
        s_storedInfo = "essa mensagem";
    }

    //functions
    function setInfo(string  memory newValue) external {
        require(msg.sender !=_owner, "you are not ADM");
        if(msg.sender == _owner){
            s_storedInfo = newValue;
        }
        emit ExercicoEvento_setInfoChanged(s_storedInfo);   
    }   
}