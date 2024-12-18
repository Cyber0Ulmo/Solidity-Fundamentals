//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

error MyContract_NotTheOwner(address caller, address owner);

contract MyContract {
    address public s_owner;
    bool public s_available;

    event Mycontract_AvalibilityChanged(bool stateChange);
       

    constructor() {
        s_owner = msg.sender;
    }

    modifier onlyOwner() {
        if(s_owner != msg.sender) revert MyContract_NotTheOwner(msg.sender, s_owner);
        _;
    }

    function disponibilidade() public onlyOwner {
        //CEI
        //Checks
        
        //Effects
        if(s_available == true){
            s_available = false;
        } else {
            s_available = true;
        }
        emit Mycontract_AvalibilityChanged(s_available);
        //Interactions

    }
}