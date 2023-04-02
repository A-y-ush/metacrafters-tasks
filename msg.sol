// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Transfer{
    address owner ;
    mapping (address => uint256) Balances;

   event tranfer(address _from , address _to , uint256 amount); // event

   function transfer(address to , uint256 amount) external {
       require(Balances[msg.sender]>= amount, "Not enough amount in account");
       Balances[msg.sender] -= amount;
       Balances[to] +=amount;
       emit tranfer(msg.sender , to , amount); // event fired 
   }
}
