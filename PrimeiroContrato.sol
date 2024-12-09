// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/////////////
///Imports///
/////////////

////////////
///Errors///
////////////

///////////////////////////
///Interfaces, Libraries///
///////////////////////////

contract PrimeiroContrato {


    /* DOCSTRING 
    */

    
    
    ///Type declarations///

    
    /////////////////////
    ///State variables///
    /////////////////////
    
    uint256 s_uint_exemplo = 2;// unsigned int posittivos inteiros 

    int s_int_exemplo; // signed int - positivos e negativos

    address s_enderecos_contract_owner; //endereço ethereum

    bytes32 s_result_hash; // hashs

    bool s_booleanos; // true or false

    string s_texto; // textos,palavrasefrases


    bytes s_textoBytes; // 


    ////////////
    ///Events///
    ////////////


    ///////////////
    ///Modifiers///
    ///////////////

    ///////////////
    ///Functions///
    ///////////////
    

    /////////////////
    ///constructor///
    /////////////////

     constructor(){
        s_enderecos_contract_owner = msg.sender;
     }

    ///////////////////////
    ///receive function ///
receive() external payable { 

}

    ///fallback function///
    ///////////////////////

    //////////////
    ///external///
    //////////////
    function externalFunction() external {
        // solo accesible desde fuera del contrato
    }

    function externalPaybleFunction() external payable {

    }

    ////////////
    ///public///
    ////////////
    function publicFunction() public {
    // accesible desde cualquier parte
    }

    //////////////
    ///internal///
    //////////////
    function internalFunction() internal {
        // accesible dentro de este contrato y contratos heredados
    }

    /////////////
    ///private///
    /////////////
    function privateFunction() private {
        // solo accesible dentro de este contrato
    }

    /////////////////
    ///view & pure///
    /////////////////
  function externalViewFunction() external view returns (uint256 s_uint) {
    s_uint = s_uint_exemplo;
  }

  function externalPureFunction(uint256 _um, uint256 _dois)
   external pure returns (uint256 _exemplo){
    _exemplo = _um * _dois;
  }

}

