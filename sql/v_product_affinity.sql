SELECT
    'CASA' AS Base_Product,

    1.0000 AS CASA,

    ROUND(COUNTIF(prod_ca = 1 AND prod_td = 1) / COUNTIF(prod_ca = 1), 4) AS TD,

    ROUND(COUNTIF(prod_ca = 1 AND prod_credit_card = 1) / COUNTIF(prod_ca = 1), 4) AS Credit_Card,

    ROUND(COUNTIF(prod_ca = 1 AND prod_app = 1) / COUNTIF(prod_ca = 1), 4) AS App

FROM BankingCustomerAnalytics.customer_dashboard

UNION ALL

SELECT
    'TD',

    ROUND(COUNTIF(prod_td = 1 AND prod_ca = 1) / COUNTIF(prod_td = 1), 4),

    1.0000,

    ROUND(COUNTIF(prod_td = 1 AND prod_credit_card = 1) / COUNTIF(prod_td = 1), 4),

    ROUND(COUNTIF(prod_td = 1 AND prod_app = 1) / COUNTIF(prod_td = 1), 4)

FROM BankingCustomerAnalytics.customer_dashboard

UNION ALL

SELECT
    'Credit Card',

    ROUND(COUNTIF(prod_credit_card = 1 AND prod_ca = 1) / COUNTIF(prod_credit_card = 1), 4),

    ROUND(COUNTIF(prod_credit_card = 1 AND prod_td = 1) / COUNTIF(prod_credit_card = 1), 4),

    1.0000,

    ROUND(COUNTIF(prod_credit_card = 1 AND prod_app = 1) / COUNTIF(prod_credit_card = 1), 4)

FROM BankingCustomerAnalytics.customer_dashboard

UNION ALL

SELECT
    'App',

    ROUND(COUNTIF(prod_app = 1 AND prod_ca = 1) / COUNTIF(prod_app = 1), 4),

    ROUND(COUNTIF(prod_app = 1 AND prod_td = 1) / COUNTIF(prod_app = 1), 4),

    ROUND(COUNTIF(prod_app = 1 AND prod_credit_card = 1) / COUNTIF(prod_app = 1), 4),

    1.0000

FROM BankingCustomerAnalytics.customer_dashboard