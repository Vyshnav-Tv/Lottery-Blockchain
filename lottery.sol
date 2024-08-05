// SPDX-License-Identifier: MIT


pragma solidity ^0.8.26;

contract Lottery{
address public  manager;
address payable []public players;
address payable public winner;

constructor(){
    manager=msg.sender;

}

function participate()public payable  {
    require(msg.value==1 ether, "please pay 1 ether");
    players.push(payable (msg.sender));
}

function getBalance()public view returns (uint){
    require(manager==msg.sender,"u are not the manager");
    return address(this).balance;
}

function random() internal  view returns (uint){
    return uint(keccak256(abi.encodePacked(blockhash(block.number - 1),block.timestamp,players.length)));
}


function pickWinner()  public {
     require(manager==msg.sender,"you are not manager");
     require(players.length >=3,"players are lessthan 3");

     uint r=random();
     uint index=r%players.length;
     winner=players[index];
     winner.transfer(getBalance());
     players=new address payable [](0);//initialize players array back to zero




}




}
