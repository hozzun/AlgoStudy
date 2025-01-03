-- 대장균들의 자식의 수 구하기 --
-- 어려워서 검색 조금 해서 찾아봄 -- 
SELECT A.ID, COUNT(B.PARENT_ID) AS CHILD_COUNT
FROM ECOLI_DATA AS A
LEFT JOIN ECOLI_DATA AS B
ON A.ID = B.PARENT_ID
GROUP BY A.ID
ORDER BY A.ID;