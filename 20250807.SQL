SELECT EMP_NO, BIRTH_DATE, FIRST_NAME, LAST_NAME, GENDER
FROM employees;

SELECT DISTINCT gender FROM EMPLOYEES;

SELECT * FROM EMPLOYEES;

SELECT EMP_NO AS '사원번호' FROM EMPLOYEES;

SELECT emp_no AS '직원번호', birth_date AS '생일', first_name AS '성', last_name AS '이름', gender AS '성별', hire_date AS '입사년월'
FROM EMPLOYEES;

SELECT emp_no,(emp_no* 100000 ) AS '사원번호' FROM EMPLOYEES;

SELECT emp_no,((emp_no* 100000 )/2) AS '사원번호' FROM EMPLOYEES;

SELECT first_name,last_name,Concat(first_name,' ',last_name) AS '성명' FROM EMPLOYEES;

SELECT CONCAT(PLAYER_NAME, ' 선수 ( ', TEAM_ID , '소속)' ) 선수명단
FROM PLAYER;

SELECT * FROM DEPARTMENTS;

SELECT concat('Insert into DEPARTMENTS values(',dept_no,',',dept_name,');') FROM DEPARTMENTS;

SELECT * FROM STADIUM S ;

SELECT concat(stadium_name,'(',seat_count,'석)')AS 경기장좌석수 FROM STADIUM S ;

SELECT * FROM player;

SELECT player_name AS 선수명 FROM PLAYER 
WHERE PLAYER_ID = '2012134';

SELECT player_id AS 선수ID, team_id AS 팀ID FROM PLAYER
WHERE PLAYER_NAME = '레오';

SELECT concat(player_id, '-',team_id)AS 선수팀 FROM PLAYER
WHERE PLAYER_NAME = '레오';

SELECT stadium_name AS 경기장명 FROM STADIUM
WHERE seat_count >= 40000;

select * from employees
where (last_name, gender) in (('Koblick', 'M'), ('Merro', 'F'));

SELECT PLAYER_NAME 선수이름, TEAM_ID
FROM PLAYER
WHERE PLAYER_NAME LIKE '오%';

SELECT PLAYER_NAME 선수이름, TEAM_ID
FROM PLAYER
WHERE PLAYER_NAME LIKE '_비%';

SELECT * FROM EMPLOYEES;

SELECT concat(first_name,last_name)AS 사원명 FROM EMPLOYEES
WHERE first_name LIKE 'P%';

SELECT concat(last_name)AS 사원명 FROM EMPLOYEES
WHERE last_name LIKE '__p%';


SELECT * FROM EMPLOYEES
WHERE gender = 'M';

SELECT EMP_NO, BIRTH_DATE, FIRST_NAME, LAST_NAME, GENDER, HIRE_DATE
FROM EMPLOYEES
WHERE BIRTH_DATE BETWEEN '1955-01-01' AND '1961-01-01';

SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%F%';

SELECT * FROM EMPLOYEES
WHERE emp_no >= 15000;

SELECT * FROM DEPARTMENTS
WHERE dept_name = 'Marketing' OR dept_name='Sales';

SELECT DEPT_NO, DEPT_NAME
FROM DEPARTMENTS
WHERE DEPT_NAME IN ('MARKETING', 'SALES');

SELECT * FROM TITLES
WHERE title = 'Staff';

CREATE TABLE player2 AS SELECT * FROM player;

SELECT * FROM player1;

UPDATE player2 SET team_id='kor'
WHERE team_id='K01';

DELETE FROM player1 WHERE team_id='kor';

SHOW CREATE TABLE player;

CREATE TABLE `player4` (
  `player_id` varchar(7) NOT NULL COMMENT '선수ID',
  `player_name` varchar(5) NOT NULL COMMENT '선수명',
  `team_id` varchar(3) NOT NULL COMMENT '소속팀아이디',
  PRIMARY KEY (`player_id`)
);

INSERT INTO player4 (SELECT * FROM player);

SELECT * FROM player4;

SELECT emp_no 	AS 사원번호,
birth_date 		AS 생일,
(LOWER(first_name)) AS 이름,
last_name 		AS 성,
gender 			AS 성별,
hire_date 		AS 입사년월
FROM EMPLOYEES;

SELECT emp_no 	AS 사원번호,
birth_date 		AS 생일,
LOWER(CONCAT(first_name,last_name)) AS 성명,
gender 			AS 성별,
hire_date 		AS 입사년월
FROM EMPLOYEES;

SELECT emp_no 	AS 사원번호,
birth_date 		AS 생일,
SUBSTR(first_name,1,1) AS 이름,
last_name 		AS 성,
gender 			AS 성별,
hire_date 		AS 입사년월
FROM EMPLOYEES;

SELECT emp_no 	AS 사원번호,
birth_date 		AS 생일,
LOWER(CONCAT(first_name,last_name)) 		AS 성명,
LENGTH(LOWER(CONCAT(first_name,last_name))) AS 성명길이,
gender 			AS 성별,
hire_date 		AS 입사년월
FROM EMPLOYEES

SELECT * FROM DEPT_EMP;

SELECT *,
CASE WHEN dept_no = 'd001' THEN '마케팅'
WHEN dept_no = 'd002' THEN '재무'
WHEN dept_no = 'd003' THEN '인사'
WHEN dept_no = 'd004' THEN '상품'
WHEN dept_no = 'd005' THEN '개발'
WHEN dept_no = 'd006' THEN '품질'
WHEN dept_no = 'd007' THEN '영업'
WHEN dept_no = 'd008' THEN '연구'
ELSE '고객서비스'
END AS 부서명
FROM DEPT_EMP;

INSERT INTO PLAYER1 (SELECT * FROM player);

SELECT * FROM player1;

SELECT count(*) FROM player1;

UPDATE player1 SET player_name = NULL
WHERE player_id = '2012131';

ALTER TABLE player1 MODIFY COLUMN player_name varchar(5) NULL;

SELECT count(*) AS astar ,count(player_name) AS COl, max(player_name) AS maxi FROM PLAYER1 P ;

SELECT count(emp_no) FROM EMPLOYEES E ;

SELECT GENDER AS 성별, COUNT(*) AS 직원수
FROM EMPLOYEES
GROUP BY GENDER
HAVING 직원수 > 150000;

SELECT * 
FROM SALARIES
ORDER BY SALARY DESC;


SELECT * 
FROM PLAYER P INNER JOIN TEAM T 
ON P.TEAM_ID  = T.TEAM_ID;  

SELECT *
FROM PLAYER P LEFT JOIN TEAM T
ON P.TEAM_ID = T.TEAM_ID ;

SELECT *
FROM PLAYER P RIGHT JOIN TEAM T
ON P.TEAM_ID = T.TEAM_ID 
WHERE P.PLAYER_ID  IS NOT NULL;








