#Q1
select title,pollId2,max(answerId) from testcase2.poll,testcase2.poll_answer,testcase2.poll_vote
group by (`answerId`);
    
#Q2
SELECT `poll_question`.`type`, `poll`.`title` FROM `testcase2`.`poll_question`
inner join `testcase2`.`poll`
on `poll_question`.`pollId1`=`poll`.`id`
where poll_question.type='Multiple choice';
    
#Q3
SELECT `poll`.`title`,active 
FROM `testcase2`.`poll_answer`
inner join `testcase2`.`poll`
where active=1 and `poll`.`id`=`poll_answer`.`pollId2`;

#Q4
SELECT `user`.`id`,`user`.`firstName`, `user`.`lastLogin`
FROM `poll`.`user` 
WHERE lastLogin  BETWEEN  NOW() - INTERVAL 7 DAY AND NOW()
GROUP BY(id);

#Q5
SELECT firstName,email FROM`testcase2`.`user` 
WHERE email not LIKE '%gmail.com';

#Q6
SELECT publishedAt FROM`testcase2`.`poll`
WHERE publishedAt LIKE '%2021%';

#Q7
SELECT `user`.`firstName`,`poll_answer`.`pollId2`,`poll_answer`.`questionId`
FROM   `testcase2`.`user`,`testcase2`.`poll_answer`
INNER JOIN `testcase2`.`poll`
WHERE  `poll_answer`.`pollId2`= `poll`.`id`
order by (firstName);
#Q8
CREATE UNIQUE INDEX uid
ON `testcase2`.`user` (id);