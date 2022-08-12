//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract simpleBank{
    //Get Money
    function getMoney()public payable{
    }
    //Show Account Balance
    function getBalance()public view returns(uint){
        return address(this).balance;
    }
    //Send Money
    uint256 x18 =1000000000000000000;
    function sendMoney(address payable _address, uint _amount)public payable returns(uint balance){
        require(_amount*x18 < address(this).balance, "You don't have enough money");
        _address.transfer(_amount*x18);
   }
}