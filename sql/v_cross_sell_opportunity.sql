SELECT

'Deposit nhưng chưa có Credit Card' Opportunity,

COUNT(DISTINCT customer_id) Customers,

AVG(amount) Avg_AUM

FROM BankingCustomerAnalytics.customer_dashboard

WHERE
(prod_ca=1 OR prod_td=1)
AND prod_credit_card=0

UNION ALL

SELECT

'Credit Card nhưng chưa có Deposit',

COUNT(DISTINCT customer_id),

AVG(amount)

FROM BankingCustomerAnalytics.customer_dashboard

WHERE
prod_credit_card=1
AND prod_ca=0
AND prod_td=0

UNION ALL

SELECT

'Chỉ dùng App',

COUNT(DISTINCT customer_id),

AVG(amount)

FROM BankingCustomerAnalytics.customer_dashboard

WHERE
prod_app = 1
AND (prod_ca = 0 OR prod_ca IS NULL)
AND (prod_td = 0 OR prod_td IS NULL)
AND (prod_credit_card = 0 OR prod_credit_card IS NULL)
AND (prod_secured_loan = 0 OR prod_secured_loan IS NULL)
AND (prod_upl = 0 OR prod_upl IS NULL)

UNION ALL

SELECT

'CASA nhưng chưa có TD',

COUNT(DISTINCT customer_id),

AVG(amount)

FROM BankingCustomerAnalytics.customer_dashboard

WHERE
prod_ca=1
AND prod_td=0