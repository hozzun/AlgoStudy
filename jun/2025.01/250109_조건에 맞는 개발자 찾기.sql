-- DISTINCT로 중복제거 안했다가 틀렸음. 중복제거 해줘야 하네요.
SELECT DISTINCT d.ID, d.EMAIL, d.FIRST_NAME, d.LAST_NAME
FROM DEVELOPERS d
JOIN SKILLCODES s
ON d.SKILL_CODE & s.CODE > 0
WHERE s.NAME IN ('Python', 'C#')
ORDER BY d.ID ASC;