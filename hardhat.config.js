require("@nomicfoundation/hardhat-toolbox");
require('dotenv').config();

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.27",
  defaultNetwork: "hardhat",
  networks: {
    hardhat: {
    },
    sepolia: {
      url: process.env.SEPOLIA_ALCHEMY_URL,
      accounts: [process.env.PRIVATE_KEY1],
      gas: 30000000, // Gas limit
      gasPrice: 30000000000, // 30 Gwei
    }
  },
};
