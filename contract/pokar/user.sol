// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract userstorage {
    struct users {
        string username;
        address uid;
        uint256 token;
    }
    users[] public _user;
    mapping(address => users) public uidtouser;

    function createuser(string memory username, address _uid) public {
        users memory user = users(username, _uid, 0);
        _user.push(user);
        uidtouser[_uid] = user;
    }

    function topup() public payable {
        require(msg.value >= 1e18, "insufficient amount to topup");
    }
}
