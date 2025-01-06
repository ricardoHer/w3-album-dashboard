const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("AlbumInteract", (m) => {
    const token = m.contract("AlbumInteract");
    return { token };
});