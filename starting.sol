//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract oguz{
    uint256 sayi1;
    uint256 sayi2;
    uint256 public sonuc;

    function topla(uint _sayi1, uint _sayi2)public{
        sayi1=_sayi1;
        sayi2=_sayi2;
        sonuc=sayi1+sayi2;
    }

    string public myString;

    function setMyString(string memory _myString)public{
        myString=_myString;
    }
    address public myAddress;

    function setAddress(address _myAddress)public{
        myAddress=_myAddress;
    }
    function LearnBalance()public view returns(uint){
        return myAddress.balance;
    }

    string public yazi;

    function setYazi(string memory _yazi)public{
        yazi=_yazi;
    }
    bool public yanlis;
    bool public dogru;

    function kontrolet(bool _yanlis, bool _dogru)public{
        yanlis=_yanlis;
        dogru=_dogru;
        
        if(yanlis==true){
            yanlis=false;
        }
        if(dogru==false){
            dogru=true;
        }
        if(dogru && yanlis==false){
            dogru=true;
            yanlis=false;
        }
        if(dogru==false && yanlis==false){
            dogru=true;
            yanlis=false;
        }
    }
}