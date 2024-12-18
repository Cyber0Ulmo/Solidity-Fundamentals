// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

error ExercicioMapping_NotTheOwner(address caller, address owner); 

contract ExercicioMapping{

    address public s_owner;
    string public s_storedInfo;
    mapping(address adm => bool _status) public s_whitelist;

    constructor(){
        s_owner = msg.sender;
        s_storedInfo = "essa mensagen";
    }

    modifier onlyOwner() {
        if(s_owner != msg.sender) revert ExercicioMapping_NotTheOwner(msg.sender, s_owner);
        _;
    }

    function addValueWhitelist(address clients, bool status)public {
        s_whitelist[clients] = status;
    }

    function setStoredInfo(string memory newInfo)public {
        
        if(s_owner != msg.sender || s_whitelist[msg.sender] == false){
            revert();
        }  s_storedInfo = newInfo;

    }   
}