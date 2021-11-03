pragma solidity >= 0.7.0 < 0.9.0;

contract RestrictedAcces {
    
    address public owner = msg.sender;
    uint public creationTime = block.timestamp;
    
    //write a modifier called onlyBy that will requier the current caller to be equal to
    //an account address which we set as an input in the modifier and if 
    //the requirement fails send a message that says - Sender not authorized!
    
    modifier onlyBy(address _ownerAddress) {
        require(msg.sender == _ownerAddress, 
        'Sender not authorized!');
        _;
    }
    
    //write a function that will change the owner address
    function changeOwnerAddress(address _newAddress) public onlyBy(owner) {
        owner = _newAddress;
    }
}
