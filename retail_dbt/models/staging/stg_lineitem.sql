SELECT
    l_orderkey AS order_id,
    l_extendedprice AS extended_price,
    l_discount AS discount,
    l_quantity AS quantity
FROM {{ source('raw', 'LINEITEM') }}