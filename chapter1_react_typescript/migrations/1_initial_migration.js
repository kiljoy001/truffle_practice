const Migrations = artifacts.require("Migrate_MetaCoin.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrate_MetaCoin);
};
