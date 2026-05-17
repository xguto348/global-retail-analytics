SELECT
    o_orderkey AS order_id,
    o_custkey AS customer_id,
    o_orderdate AS order_date
FROM {{ source('raw', 'ORDERS') }}