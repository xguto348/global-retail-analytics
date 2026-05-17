SELECT
    DATEADD(
        YEAR,
        2020 - EXTRACT(YEAR FROM o.order_date),
        o.order_date
    ) AS order_date,

    c.region,
    c.nation,

    SUM(l.extended_price * (1 - l.discount)) AS revenue,
    SUM(l.quantity) AS total_quantity,
    COUNT(DISTINCT o.order_id) AS total_orders

FROM {{ ref('stg_orders') }} o
JOIN {{ ref('stg_lineitem') }} l
    ON o.order_id = l.order_id
JOIN {{ ref('stg_customer') }} c
    ON o.customer_id = c.customer_id

GROUP BY
    order_date,
    c.region,
    c.nation