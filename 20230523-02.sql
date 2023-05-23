SELECT MEMBER_ID        --회원아이디
     , MEMBER_NAME      --회원이름
     , PASSWD           --비밀번호
     , GRADE_CD         --회원등급
     , GENDER           --성별
  FROM TB_MEMBER        
 WHERE GRADE_CD = 3;

SELECT GRADE_NAME
  FROM TB_GRADE
 WHERE GRADE_CD >= 4;

SELECT *
  FROM TB_MEMBER
 WHERE MEMBER_NAME = '사용자D';
 
SELECT *
  FROM TB_MEMBER_TEL
 WHERE TEL_DV_CD = '집';
 
SELECT PRD_ID
     , PRD_NAME
     , PRD_PRICE
  FROM TB_PRD
 WHERE PRD_PRICE > 1500000;
 
SELECT *
  FROM MAPPING
 WHERE ENG = 'TEL';
 
 // 1번 문제
SELECT *
  FROM TB_MEMBER
 WHERE GRADE_CD = 2
   AND GENDER = '남';
   
// 2번 문제   
SELECT PRD_NAME
     , PRD_TYPE
     , PRD_PRICE
  FROM TB_PRD
 WHERE PRD_TYPE = '욕실용품'
   AND SELL_COMP_NAME = '다우니'
   AND PRD_PRICE >= 20000;
 
// 3번 문제
SELECT *
  FROM TB_MEMBER
 WHERE MEMBER_ID = 'AAAAA'
    OR MEMBER_ID = 'BBBBB';
 
 
SELECT *
  FROM TB_PRD
 WHERE NOT PRD_TYPE = '가전';
 
SELECT *
  FROM TB_PRD
 WHERE PRD_TYPE <> '가전';
 
 SELECT *
  FROM TB_PRD
 WHERE PRD_TYPE != '가전';
 
SELECT *
  FROM TB_MEMBER
 WHERE AGE >= 30;
 
// 문제 1
SELECT *
  FROM TB_MEMBER_TEL
 WHERE TEL_DV_CD != '휴대폰';
 
// 문제 2
SELECT *
  FROM TB_PRD
 WHERE PRD_PRICE <= 15000;
 
SELECT *
  FROM TB_MEMBER
 WHERE GENDER IS NOT NULL;
 
SELECT *
  FROM TB_MEMBER
 WHERE AGE IS NOT NULL;
 
SELECT *
  FROM TB_MEMBER
 WHERE GENDER IS NOT NULL
   AND AGE IS NOT NULL;
   
SELECT *
  FROM TB_PRD
 WHERE PRD_TYPE = '가전'
    OR PRD_TYPE = '욕실용품'
    OR PRD_TYPE = '스마트폰';
    
SELECT *
  FROM TB_PRD
 WHERE PRD_TYPE NOT IN ('가전' , '욕실용품', NULL, '스마트폰');
 
SELECT *
  FROM TB_MEMBER
 WHERE GRADE_CD IN(1, 2);
 
SELECT *
  FROM TB_MEMBER
 WHERE AGE IN (25, 30, 35);
 
SELECT *
  FROM TB_MEMBER
 WHERE AGE >= 20
   AND AGE <= 35;
   
SELECT *
  FROM TB_MEMBER
 WHERE AGE BETWEEN 20 AND 35;
 
SELECT *
  FROM TB_PRD
 WHERE PRD_NAME LIKE '수%'; --- 0개 이상 문자를 매칭한다.
 
SELECT *
  FROM TB_PRD
 WHERE PRD_TYPE LIKE '%용%'; -- 용을 포함한 상품이름을 가져온다.
 
SELECT *
  FROM TB_PRD
 WHERE PRD_NAME LIKE '%기'; -- 기로 끝나는 문자를 가져온다.
 
SELECT *
  FROM TB_PRD
 WHERE PRD_NAME LIKE '__기';
 
// 문제 1
SELECT MEMBER_NAME
  FROM TB_MEMBER
 WHERE JOIN_DY LIKE '2023%';
 
// 문제2
SELECT PRD_NAME
     , PRD_INFO
  FROM TB_PRD 
 WHERE REG_DATE LIKE '2023-05-09%';
 
// 문제 3
SELECT PRD_NAME
     , PRD_PRICE
  FROM TB_PRD
 WHERE PRD_TYPE IN('주방용품', '욕실용품');
 
// 문제 4
SELECT *
  FROM TB_PRD
 WHERE PRD_INFO LIKE '%적합한%';
 