const { deployProxy } = require('@openzeppelin/truffle-upgrades');

var EUCLiD = artifacts.require("EUCLiD");

module.exports = async (deployer) => {
    const euclid = await deployProxy(EUCLiD, ["EUCLiD", "EUCLiD"], { deployer });
};
