CREATE OR REPLACE TABLE `BankingCustomerAnalytics.customer_dashboard` AS

SELECT
    c.customer_id,
    c.segment,
    c.province_city,
    a.amount,
    p.prod_ca,
    p.prod_td,
    p.prod_credit_card,
    p.prod_app,
    p.prod_secured_loan,
    p.prod_upl,

    -- Tổng số sản phẩm
    (
        p.prod_ca +
        p.prod_td +
        p.prod_credit_card +
        p.prod_app +
        p.prod_secured_loan +
        p.prod_upl
    ) AS product_count,

    -- Nhóm số lượng sản phẩm
    CASE
        WHEN (
            p.prod_ca +
            p.prod_td +
            p.prod_credit_card +
            p.prod_app +
            p.prod_secured_loan +
            p.prod_upl
        ) = 1 THEN '1 Product'

        WHEN (
            p.prod_ca +
            p.prod_td +
            p.prod_credit_card +
            p.prod_app +
            p.prod_secured_loan +
            p.prod_upl
        ) BETWEEN 2 AND 3 THEN '2-3 Products'

        WHEN (
            p.prod_ca +
            p.prod_td +
            p.prod_credit_card +
            p.prod_app +
            p.prod_secured_loan +
            p.prod_upl
        ) >= 4 THEN '4+ Products'

        ELSE 'No Product'
    END AS product_group,

    -- Nhóm AUM
    CASE
        WHEN a.amount < 50000000 THEN '<50M'
        WHEN a.amount < 100000000 THEN '50M - 100M'
        WHEN a.amount < 200000000 THEN '100M - 200M'
        ELSE '>200M'
    END AS aum_group

FROM `BankingCustomerAnaly.customer` c

LEFT JOIN `BankingCustomerAnaly.aum` a
    ON c.customer_id = a.customer_id

LEFT JOIN `BankingCustomerAnaly.product` p
    ON c.customer_id = p.customer_id;