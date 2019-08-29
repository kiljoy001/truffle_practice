pragma solidity >= 0.4.17;

contract Migrate_MetaCoin {
  address public owner;
  uint public last_completed_migration;

  modifier restricted() {
    if (msg.sender == owner) 
    _;
  }

  constructor() public {
    owner = msg.sender;
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }

  function upgrade(address new_address) public restricted {
    Migrate_MetaCoin upgraded = Migrate_MetaCoin(new_address);
    upgraded.setCompleted(last_completed_migration);
  }
}
