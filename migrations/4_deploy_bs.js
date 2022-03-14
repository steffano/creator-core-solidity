const { deployProxy } = require('@openzeppelin/truffle-upgrades');

var BrockSeals = artifacts.require("BrockSeals");

module.exports = async (deployer) => {
    deployer.deploy(BrockSeals);
};
