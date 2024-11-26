// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Album {
    string public artist;
    string public albumTitle = "Nevermind";
    uint public tracks;

    string public constant contractAlbum = 'Kris Bennet';

    constructor() {
        artist = "Nirvana";
        albumTitle = "Nevermind";
        tracks = 13;
    }

    function getAlbum() public view returns(string memory, string memory, uint) {
        return (artist, albumTitle, tracks);
    }

    function setAlbum(string memory _artist, string memory _albumTitle, uint _tracks) public {
        artist = _artist;
        albumTitle = _albumTitle;
        tracks = _tracks;
    }
}