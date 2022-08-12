//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract sendMoney{
    // // function receiveMoney()public payable{
    // // }

    // address myAddress=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    // function showBalance()public view returns(uint){
    //     return myAddress.balance;
    // }
    uint public balanceReceived;

    // function receiveMoney()public payable{
    //     balanceReceived+=msg.value;
    // }

    function getBalance()public view returns(uint){
        return address(this).balance;
    }

    // function transfer(address payable _to, uint _amount) public payable{
    //     _to.transfer(_amount);
    // }
    // uint256 sayikatlama =1000000000000000000;

    // function sendEther(address payable alici, uint _miktar)external payable{
    //     alici.transfer(_miktar+sayikatlama);
    // }
    // uint miktar;
    // function balanceshow()public view returns(uint){
    //     return address(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2).balance;
    // }
    function paraal () public payable{
        balanceReceived+=msg.value;
    }

    // function withdrawMoney(address payable alici,uint amount)public payable{
    //     miktar=amount;
    //     alici.transfer(amount);
    // }
    // function gonderilenPara()public view returns(uint){
    //     return miktar;
    // }

    // iade etme
    function paracek(uint256 _amount)public payable{
        payable (msg.sender).transfer(address(this).balance);
    }
}