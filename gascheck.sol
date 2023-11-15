// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract SimpleStorage{    
    uint256 public myFavoriteNumber = 256; // 

    //the execution cost of this contract is 2402 
    // the gas fee at the moment is 25GWEI 
    // transaction cost = execution cost * gas fee ==> 2402 * 28Gwei == 67,256 Gwei
    // The Transaction cost in Wei = Gwei*1000,000,000 ==> 67,256,000,000,000 Wei
    // The Transaction cost in Ether = Gwei/1000,000,000 ==> 0.000065206 Ether
}