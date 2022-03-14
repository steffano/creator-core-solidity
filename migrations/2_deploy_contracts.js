const { deployProxy } = require('@openzeppelin/truffle-upgrades');

// var BrockSeals = artifacts.require("BrockSeals");
// var xEUCLiD = artifacts.require("xEUCLiD");
var EUCLiD = artifacts.require("EUCLiD");

module.exports = async (deployer) => {
    const euclid = await deployProxy(EUCLiD, ["EUCLiD", "EUCLiD"], { deployer });
    // deployer.deploy(BrockSeals);
    // const upg = await deployProxy(xEUCLiD, ["xEUCLiD", "xE"], { deployer });
};
