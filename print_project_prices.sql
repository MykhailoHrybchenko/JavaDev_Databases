SELECT p.ID AS PROJECT_NAME,
SUM(w.SALARY * (DATEDIFF(month, START_DATE, FINISH_DATE))) AS PRICE
FROM project p
JOIN project_worker pw ON p.ID = pw.PROJECT_ID
JOIN worker w ON w.ID = pw.WORKER_ID
GROUP BY PROJECT_NAME
ORDER BY PRICE DESC