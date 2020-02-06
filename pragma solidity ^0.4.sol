pragma solidity ^0.4.0;

contract GuardaLoteria {
    uint numeroSorteado;
    address dono;
    uint contadorDeSorteios = 0;
    bool donoRico = false;
    
    constructor(uint NumeroInicial) public {
        require (msg.sender.balance > 99.999999999999 ether);
        
        numeroSorteado = NumeroInicial;
        dono = msg.sender;
        contadorDeSorteios = 1;
        
        if (msg.sender.balance > 20 ether){
            donoRico = true;
        }
        else {
            donoRico = false;
        }}