// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Album {
    string public artist;
    string public albumTitle = "Nevermind";
    uint public tracks;

    string public constant contractAlbum = 'Kris Bennet';

    address public owner;

    // Event which will be raised anytime the current album information is updated
    event albumEvent(string albumEvent_Artist, string albumEvent_Title, uint albumEvent_Tracks);

    constructor() {
        artist = "Nirvana";
        albumTitle = "Nevermind";
        tracks = 13;

        owner = msg.sender;
    }

    function getAlbum() public view returns(string memory, string memory, uint) {
        return (artist, albumTitle, tracks);
    }

    function setAlbum(string memory _artist, string memory _albumTitle, uint _tracks) onlyOwner public {
        artist = _artist;
        albumTitle = _albumTitle;
        tracks = _tracks;

        // Raise the algum event to let any event subscribers know the current algum informaition has changed.
        emit albumEvent(_artist, _albumTitle, _tracks);
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }
}