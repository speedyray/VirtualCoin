pragma solidity >=0.4.0 <0.6.0;

contract VirtualCoin {
    
//declare a state variable of type address that is publicly accessible
   address public inventor;
   
   //map an address to unint values
   mapping (address => uint) public balances;
   
   //Event will fire to notify 
   event notify(address from,  address to, uint amount );
   
   //constructor will fire when this contract is created
    constructor() public {
   // set inventor as creater of this contract
      inventor = msg.sender;
   }
   
   //Invent virtual coins only by contract creator
   function invent(address recipient, uint amount) public {
    //validate inventor is contract creator
     require(msg.sender == inventor);
     //check  that not too many coins are made
     require(amount < 1e40);
     //Add the amount to the balance of the recipient
     balances[recipient] += amount;
     
   }
   
   // Use this to send coins to anyone
   function sendCoins(address recipient, uint amount) public {
     // check that sender has sufficient funds
     require(amount <= balances[msg.sender], "insufficient funds");
     // withdraw the amount
     balances[msg.sender] -= amount;
     // add to recipient
     balances[recipient]  += amount;
     // fire event 
     emit notify(msg.sender, recipient, amount);
       
     }
  
   }
   
   

