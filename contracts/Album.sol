// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Album {
    struct musicAlgum {
        string artist;
        string albumTitle;
        uint tracks;
    }
    musicAlgum public currentAlbum;
    mapping(address => musicAlgum) public userAlbuns;

    string public constant contractAlbum = "Kris Bennet";
    address public owner;

    // Event which will be raised anytime the current album information is updated
    event albumEvent(
        string algumEvent_Description,
        string albumEvent_Artist,
        string albumEvent_Title,
        uint albumEvent_Tracks
    );

    event errorEvent(string errorEvent_Message);

    constructor() {
        currentAlbum.artist = "Nirvana";
        currentAlbum.albumTitle = "Nevermind";
        currentAlbum.tracks = 13;

        owner = msg.sender;
    }

    function getCurrentlbum()
        public
        view
        returns (string memory, string memory, uint)
    {
        return (
            currentAlbum.artist,
            currentAlbum.albumTitle,
            currentAlbum.tracks
        );
    }

    function setCurrentAlbum(
        string memory _artist,
        string memory _albumTitle,
        uint _tracks
    ) public onlyOwner {
        currentAlbum.artist = _artist;
        currentAlbum.albumTitle = _albumTitle;
        currentAlbum.tracks = _tracks;

        // Raise the algum event to let any event subscribers know the current algum informaition has changed.
        emit albumEvent(
            "The current album information has been updated",
            _artist,
            _albumTitle,
            _tracks
        );
    }

    function getUserFavoriteAlbum()
        public
        view
        returns (string memory, string memory, uint)
    {
        return (
            userAlbuns[msg.sender].artist,
            userAlbuns[msg.sender].albumTitle,
            userAlbuns[msg.sender].tracks
        );
    }

    function setUsersFavoriteAlbum(
        string memory _artist,
        string memory _albumTitle,
        uint _tracks
    ) public {
        userAlbuns[msg.sender].artist = _artist;
        userAlbuns[msg.sender].albumTitle = _albumTitle;
        userAlbuns[msg.sender].tracks = _tracks;

        emit albumEvent(
            "You have updated your personal favorite album information",
            _artist,
            _albumTitle,
            _tracks
        );
    }

    modifier onlyOwner() {
        if (msg.sender == owner) {
            _;
        } else {
            emit errorEvent("Only the owner can call this function");
        }
    }
}
