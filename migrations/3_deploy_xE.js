const { deployProxy } = require('@openzeppelin/truffle-upgrades');

var xEUCLiD = artifacts.require("xEUCLiD");

module.exports = async (deployer) => {
    deployer.deploy(xEUCLiD);
};
