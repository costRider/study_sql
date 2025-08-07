#SQL 실습

```sql
#WHERE 조건절
/*
WHERE
[예제]
SELECT [DISTINCT/ALL] 컬럼명 [ALIAS 명]
FROM 테이블명
WHERE 조건식;

조건식 구성 :
컬럼명 : 보통 조건식 좌측 위치
문자/숫자/표현식 : 보통 조건식 우측 위치
✔ 사용자들은 자신이 원하는 자료만을 검색하기 위해서
SQL 문장에 WHERE절을 이용하여 자료들에 대하여 제한할 수 있다. 
✔ 두 개 이상의 테이블에 대한 JOIN을 지원하는 기능도 가지고 있다. 
✔ WHERE 절은 조회하려는 데이터에 특정 조건을 부여할 목적으로 사용하기 때문에
FROM절 뒤에 오게 되다.
*/

#선수 테이블에서 선수ID가 2012134 인 선수이름 출력
SELECT player_name AS 선수명 FROM PLAYER 
WHERE PLAYER_ID = '2012134';

#선수 테이블에서 선수이름이 '레오'인 선수 ID와 팀ID를 출력
SELECT player_id AS 선수ID, team_id AS 팀ID FROM PLAYER
WHERE PLAYER_NAME = '레오';

#경기장에서 테이블 좌석수가 40000이상인 경기장을 출력
SELECT stadium_name AS 경기장명 FROM STADIUM
WHERE seat_count >= 40000;

#IN 조건
/*
	명칭을 넣어서 해당하는 것을 찾음
	두가지 조건도 넣을 수 있음
*/

#예시
select * from employees
where last_name in ( 'Koblick', 'Merro');

select * from employees
where (last_name, gender) = ( 'Koblick', 'M');

select * from employees
where (last_name, gender) in (('Koblick', 'M'));

select * from employees
where (last_name, gender) in (('Koblick', 'M'), ('Merro', 'F'));

#WHERE 조건 - LIKE
/*
	% 0개 이상의 어떤 문자를 의미한다.
	_ 1개인 단일 문자를 의미한다.
*/

#예제
SELECT PLAYER_NAME 선수이름, TEAM_ID
FROM PLAYER
WHERE PLAYER_NAME LIKE '오%';

SELECT PLAYER_NAME 선수이름, TEAM_ID
FROM PLAYER
WHERE PLAYER_NAME LIKE '_비%';

#사원 테이블에서 first_name가 'P'로 시작하는 사원을 모두 출력하세요
SELECT concat(first_name,last_name)AS 사원명 FROM EMPLOYEES
WHERE first_name LIKE 'P%';

#사원 테이블에서 last_name의 3번째에 'p'가 들어간 사원을 모두 출력하세요
SELECT concat(first_name,last_name)AS 사원명 FROM EMPLOYEES
WHERE last_name LIKE '__p%';

```

