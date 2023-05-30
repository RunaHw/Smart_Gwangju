SELECT PRD_ID
     , PRD_NAME
     , REG_DATE
  FROM TB_PRD
 WHERE REG_DATE >= TO_DATE('20230501000000' , 'YYYYMMDDHH24MISS')
   AND REG_DATE < TO_DATE('20230503000000' , 'YYYYMMDDHH24MISS');
   
   
SELECT PRD_NAME
     , PRD_INFO
  FROM TB_PRD
 WHERE REG_DATE >= TO_DATE('20230509000000', 'YYYYMMDDHH24MISS')
   AND REG_DATE < TO_DATE('20230510000000', 'YYYYMMDDHH24MISS');
   
   
SELECT SHOPPING.TB_MEMBER.MEMBER_ID
     , SHOPPING.TB_MEMBER.MEMBER_NAME
  FROM SHOPPING.TB_MEMBER
 WHERE SHOPPING.TB_MEMBER.GRADE_CD = 1;
 
SELECT *
  FROM TB_MEMBER
     , TB_MEMBER_TEL;
     
SELECT A.MEMBER_ID
     , A.MEMBER_NAME
     , B.MEMBER_ID
     , B.TEL_NO
  FROM TB_MEMBER A
     , TB_MEMBER_TEL B;
     
SELECT *
  FROM 회원 A, 회원연락처 B
 WHERE A.회원ID = B.회원ID
   AND A.회원ID = 'A0001'
   AND B.구분코드 = '휴대폰';
 
// 문제 1
SELECT *
  FROM TB_MEMBER
     , TB_MEMBER_TEL;
     
// 문제 2
SELECT *
  FROM TB_MEMBER A
     , TB_MEMBER_TEL B
 WHERE A.MEMBER_ID = B.MEMBER_ID;
 
// 문제 3
SELECT *
  FROM TB_MEMBER A
     , TB_MEMBER_TEL B
 WHERE A.MEMBER_ID = B.MEMBER_ID
   AND B.TEL_DV_CD = '휴대폰';
   
SELECT A.회원ID
     , A.이름
     , B.연락처
  FROM 회원 A
     , 회원연락처 B
 WHERE A.회원ID = B.회원ID;
 
    
SELECT *
  FROM 회원 A
     , 회원연락처 B
 WHERE A.회원ID(+) = B.회원ID ;
 
// 문제 1
SELECT A.MEMBER_ID
     , A.MEMBER_NAME
     , B.LIKE_PRD_TYPE
     , B.REG_DATE
  FROM TB_MEMBER A
     , TB_MEMBER_LIKE B
 WHERE A.MEMBER_ID = 'BBBBB'
   AND B.MEMBER_ID = 'BBBBB';

//문제 2
SELECT A.MEMBER_ID
     , A.MEMBER_NAME
     , A.GRADE_CD
     , B.TEL_NO
 FROM TB_MEMBER A 
    , TB_MEMBER_TEL B
 WHERE A.MEMBER_ID = B.MEMBER_ID(+);
    
// 문제 3
SELECT A.MEMBER_ID
     , A.MEMBER_NAME
     , A.GRADE_CD
     , B.TEL_NO
 FROM TB_MEMBER A 
    , TB_MEMBER_TEL B
 WHERE A.MEMBER_ID = B.MEMBER_ID(+)
   AND B.TEL_NO IS NULL;
   
// 문제 4
SELECT *
  FROM TB_ORDER A
     , TB_MEMBER B
     , TB_PRD C 
 WHERE A.PRD_ID = C.PRD_ID
   AND A.MEMBER_ID = B.MEMBER_ID
   AND B.MEMBER_ID ='AAAAA';
   
// 문제5
SELECT A.MEMBER_ID
     , A.PRD_ID
     , B. PRD_NAME
  FROM TB_WISH A INNER JOIN TB_PRD B
    ON(A.PRD_ID = B.PRD_ID)
 WHERE A.MEMBER_ID = 'AAAAA';
 
// 문제 1
SELECT A.PRD_ID
     , A.PRD_NAME
     , B.ORDER_NO
     , B.ORDER_DATE
  FROM TB_PRD A INNER JOIN TB_ORDER B   
    ON (A.PRD_ID = B.PRD_ID)
 WHERE B.ORDER_NO = 4;
 
// 문제2
SELECT A.MEMBER_ID
     , A.MEMBER_NAME
     , B.TEL_NO
  FROM TB_MEMBER A LEFT OUTER JOIN TB_MEMBER_TEL B
    ON (A.MEMBER_ID = B.MEMBER_ID);
    
//문제3
SELECT A.LIKE_PRD_TYPE
     , B.MEMBER_ID
     , B.MEMBER_NAME
  FROM TB_MEMBER_LIKE A RIGHT OUTER JOIN TB_MEMBER B
    ON (A.MEMBER_ID = B.MEMBER_ID)
 WHERE A.LIKE_PRD_TYPE IS NULL;
  
   
   
 
 
 