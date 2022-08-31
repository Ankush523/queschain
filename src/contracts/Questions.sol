// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Questions{

    uint qid;
    uint aid;
    uint upvote;
    struct Question_maker{
        uint qid;
        address question_maker;
        string question;
    }

    struct Answer_giver{
        string answer;
        uint upvote;
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

    function giveAnswer(uint _aid,string memory _answer) external{
        answers[_aid]=Answer_giver(_answer,upvote);
    }

    function upVote_value(uint _aid) external{
        answers[_aid].upvote++;
    }
}
