SELECT DATABASE();
USE finance;
SELECT * FROM finance.finance_analytics_5000_rows;
SELECT Customer_ID,Loan_ID,COUNT(*) AS Duplicate_Count 
FROM finance.finance_analytics_5000_rows
GROUP BY Customer_ID, loan_ID
HAVING COUNT(*) > 1;
ALTER TABLE finance.finance_analytics_5000_rows
MODIFY Customer_ID VARCHAR(50) NOT NULL,
MODIFY Loan_ID VARCHAR(50) NOT NULL;
ALTER TABLE finance.finance_analytics_5000_rows
ADD PRIMARY KEY (Customer_ID, loan_ID);


select * from finance.finance_analytics_5000_rows;
