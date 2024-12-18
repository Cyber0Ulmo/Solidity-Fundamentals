// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract ExemploStruct{

    struct Pessoa{
        uint8 idade;
        string nome;
        bool ativo;
    }

    Pessoa public pessoa;
    
    //stroage

    Pessoa[] public s_pessoa;
    mapping (address wallet => Pessoa) public s_mappingPessoa;
    mapping (address wallet => Pessoa[]) public s_mappingArrayPessoa;

    function makePessoa(string memory _nome, uint8 _idade) public {
        pessoa = Pessoa({
            nome: _nome,
            idade: _idade,
            ativo: true
        });
    }
}
