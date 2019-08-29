pragma solidity >= 0.4.24;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract TutorialToken is ERC20, Ownable {
    string name ="TutorialToken";
    string public symbol = "TT";
    uint8 public decimals = 2;
    uint public INITIAL_SUPPLY = 1000;
    //mapping(address => uint)public balances;

    constructor() public {
        _mint(msg.sender, INITIAL_SUPPLY);
    }

    /* function balanceOf(address addr) public view returns(uint) {
        return balances[addr];
    } */
}