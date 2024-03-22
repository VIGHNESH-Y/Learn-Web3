pragma solidity ^0.8.0;

contract SimpleVoting {
    struct Candidate {
        string name;
        uint256 voteCount;
    }

    Candidate[] public candidates;

    function addCandidate(string memory _name) public {
        candidates.push(Candidate(_name, 0));
    }

    function vote(uint256 _candidateIndex) public {
        candidates[_candidateIndex].voteCount++;
    }

    function getCandidateCount() public view returns (uint256) {
        return candidates.length;
    }

    function getCandidate(uint256 _index) public view returns (string memory, uint256) {
        return (candidates[_index].name, candidates[_index].voteCount);
    }
}