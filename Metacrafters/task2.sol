// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract calculation{
    address user;

    constructor(){
        user = msg.sender;
    }
    uint256 amount;
    
    function add_to_amount(uint256 x) internal view returns(uint256){
        return (amount+x);
    }

    function add(uint256 a , uint256 b) internal pure returns(uint256){
        return(a+b);
    }

    function deposit() public payable {
       amount += msg.value;
    }
}