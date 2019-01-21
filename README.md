# VirtualCoin
> A VirtualCoin contract  written in Solidity

## General info
A virtual coin contract in solidity.

This project aims to create a simple contract with functions in Solidity 

My motivation is to practise coding anytime anywhere

## Technologies
* pragma solidity  - version >=0.4.0 <0.6.0;

## Setup
Tested written code directly on remix.ethereum.org

## Code Examples
Declare a state variable of type address that is publicly accessible

` address public inventor;`

Map an address to unint values

 `mapping (address => uint) public balances;`
     
  Constructor will fire when this contract is created
  Set inventor as creater of this contract:
  
  ` constructor() public {
     inventor = msg.sender;
   }`

## Status
Project is: _finished_

## Inspiration
Credits to Solidity documentation

## Contact
Created by [Raynold](https://ca.linkedin.com/in/raynold-gyasi-036631119) - feel free to contact me!


