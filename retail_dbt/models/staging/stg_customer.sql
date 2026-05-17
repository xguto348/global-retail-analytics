SELECT
    c.c_custkey AS customer_id,
    c.c_name AS customer_name,
    n.n_name AS nation,
    r.r_name AS region
FROM {{ source('raw', 'CUSTOMER') }} c
JOIN {{ source('raw', 'NATION') }} n
    ON c.c_nationkey = n.n_nationkey
JOIN {{ source('raw', 'REGION') }} r
    ON n.n_regionkey = r.r_regionkey