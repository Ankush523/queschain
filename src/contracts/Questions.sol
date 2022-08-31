// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Questions{

    uint qid;
    uint aid;
    struct Question_maker{
        uint qid;
        address question_maker;
        string question;
    }

    struct Answer_giver{
        uint aid;
        string answer;
    }

    mapping(uint => Question_maker) questions;
    mapping(uint => Answer_giver) answers;
    function addQuestion(string memory _question) external {
        ++qid;
        questions[qid] = Question_maker(qid,msg.sender,_question);
    }

    function showQuestions(uint _qid) public view returns (Question_maker memory)
    {
        return questions[_qid];
    }
    
}
