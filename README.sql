SELECT Customer_ID,
Monthly_Income,
SUM(Monthly_Income) OVER (
ORDER BY Customer_ID
) AS Running_Total_Income
FROM finance.finance_analytics_5000_rows;

SELECT Customer_ID,
Monthly_Expenses,
SUM(Monthly_Expenses) over (
ORDER BY Customer_ID
) AS Running_Total_Expenses
FROM finance.finance_analytics_5000_rows;

SELECT Customer_ID,
Monthly_Income,
SUM(Monthly_Income) OVER () AS Total_Income
FROM finance.finance_analytics_5000_rows;

SELECT Customer_ID,
Monthly_Expenses,
SUM(Monthly_Expenses) OVER () AS Total_Expenses
FROM finance.finance_analytics_5000_rows;

SELECT Customer_ID,
Monthly_Income,
RANK() OVER(
ORDER BY Monthly_Income DESC
) AS Income_Rank
FROM finance.finance_analytics_5000_rows;

SELECT Customer_ID,
Monthly_Income,
Monthly_Expenses,
SUM(Monthly_Income - Monthly_Expenses) OVER (
ORDER BY Customer_ID
) AS Running_Savings
FROM finance.finance_analytics_5000_rows;

