--문제
-- 1. 직무별 급여 평균 보다 적게받는 사람들의 모든 속성 + 직무 이름을 출력 
SELECT * FROM EMPLOYEES E 
JOIN (SELECT JOB_ID, AVG(SALARY) AS AVG_SAL FROM EMPLOYEES EMP GROUP BY JOB_ID) JSAL
ON E.JOB_ID=JSAL.JOB_ID
JOIN JOBS JOBS
ON E.JOB_ID=JOBS.JOB_ID
WHERE SALARY<AVG_SAL;



-- 2. 도시가 southLake 인 사람들의 명 수 출력
SELECT COUNT(*) FROM EMPLOYEES E,DEPARTMENTS D
JOIN (SELECT CITY FROM DEPARTMENTS DEPT, LOCATIONS LOC GROUP BY LOCATION_ID) JCI
ON D.LOC_ID=JCI.LOC_ID
WHERE CITY='SOUTHLAKE';

SELECT COUNT(*) FROM EMPLOYEES E
JOIN DEPARTMENTS D
ON E.DEPARTMENT_ID= D.DEPARTMENT_ID
JOIN LOCATIONS LOC
ON D.LOCATION_ID=LOC.LOCATION_ID
WHERE CITY='SOUTHLAKE';


-- 3. 시애틀에서 일하는 사람들의 부서별 평균 급여 출력
SELECT E.DEPARTMENT_ID,AVG(SALARY) FROM EMPLOYEES E
JOIN DEPARTMENTS D 
ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
JOIN LOCATIONS LOC
ON D.LOCATION_ID=LOC.LOCATION_ID
WHERE LOC.CITY='SEATTLE'
GROUP BY E.DEPARTMENT_ID;

--INSERT 구문
INSERT INTO DEPARTMENTS VALUES(280,'JSP',NULL,1700);
INSERT INTO DEPARTMENTS (DEPARTMENT_NAME,DEPARTMENT_ID, LOCATION_ID)
VALUES('JSP',280,1700);
COMMIT;

--TRANSACTION : 임시저장상태
-- 아직반영 되기 직전

UPDATE DEPARTMENTS SET DEPARTMENT_NAME='SPRING' WHERE DEPARTMENT_ID=280;
ROLLBACK;
SELECT * FROM DEPARTMENTS;

DELETE FROM DEPARTMENTS WHERE DEPARTMENT_ID=280;
DELETE FROM DEPARTMENTS WHERE DEPARTMENT_ID=90;
--90번과 관련된 자식 소스를 지울 수 없기 때문에 삭제불가
-- 지울수 있는 방법: 1. CASCADE 권장 X
--2. NULL로 만들어 DELETE
UPDATE EMPLOYEES SET DEPARTMENT_ID=NULL WHERE DEPARTMENT_ID=90; 
DELETE FROM DEPARTMENT WHERE DEPARTMENT_ID=90;

--   NUMBER(길이)  :정수 (EX: NUMBER(7)은 7자리 정수)
--  NUMBER(길이, 소수점자리수)  :실수 (EX: NUMBER(7,2)는 정수 5자리, 소수 2자리)
--    CHAR(크기): 고정 길이 문자 데이터. 입력된 자료 길이와 상관없이 정해진 길이를 차지 하는 타입, 잘사용 안함
--    VARCHAR2(크기): 가변길이 문자 데이터, 실제 입력된 문자 길이 만큼만 공간을 차지 하는 타입
--          크기를 줄일수 없음 데이터 무결성, 키우는건 상관없음
--    DATE    :날짜 데이터를 저장할 수 있는 타입,
--   TIMESTAMP   : 밀리 세컨드까지 저장가능 타입
-- 파일삽입 ==> BLOB(BINARY LARGE OBJECT)  운영체제에 저장함, 그래서 DB에저장되어있는것처럼 보임
-- CLOB(CHARACTER LARGE OBJECT) TEXT OR XML 같은것
CREATE TABLE EXAMPLE (
C1 NUMBER(6,0) PRIMARY KEY,
C2 VARCHAR2(30) NOT NULL,
C3 VARCHAR2(50) UNIQUE);

--ALTER => 
ALTER TABLE EXAMPLE ADD(C4 BLOB);
ALTER TABLE EXAMPLE MODIFY (C2 VARCHAR2(80));
ALTER TABLE EXAMPLE RENAME COLUMN C4 TO FILE_DATA;
ALTER TABLE EXAMPLE DROP COLUMN C4;


-- TRUNCATE ==> TABLE자르기 (DELETE TABLE 비슷)
TRUNCATE TABLE EXAMPLE;
--테이블을 모두 삭제
DROP TABLE EXAMPLE;