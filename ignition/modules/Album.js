const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("AlbumModule", (m) => {
    const album = m.contract("Album");

    return { album };
});