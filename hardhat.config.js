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
      url: "https://eth-sepolia.g.alchemy.com/v2/Fmyf_pl7WZemB2FNg_wLl6Hza47tZpAW",
      accounts: [process.env.PRIVATE_KEY1],
      gas: 3000000, // Gas limit
      gasPrice: 30000000000, // 30 Gwei
    }
  },
};
