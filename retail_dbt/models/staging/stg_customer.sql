SELECT
    c.c_custkey AS customer_id,
    c.c_name AS customer_name,

    n.n_name AS nation,

    -- emoji da bandeira
    CASE
        WHEN n.n_name = 'BRAZIL' THEN '🇧🇷'
        WHEN n.n_name = 'UNITED STATES' THEN '🇺🇸'
        WHEN n.n_name = 'GERMANY' THEN '🇩🇪'
        WHEN n.n_name = 'FRANCE' THEN '🇫🇷'
        WHEN n.n_name = 'CANADA' THEN '🇨🇦'
        WHEN n.n_name = 'ARGENTINA' THEN '🇦🇷'
        WHEN n.n_name = 'JAPAN' THEN '🇯🇵'
        WHEN n.n_name = 'CHINA' THEN '🇨🇳'
        WHEN n.n_name = 'INDIA' THEN '🇮🇳'
        WHEN n.n_name = 'UNITED KINGDOM' THEN '🇬🇧'
        ELSE '🌍'
    END AS country_flag,

    r.r_name AS region

FROM {{ source('raw', 'CUSTOMER') }} c
JOIN {{ source('raw', 'NATION') }} n
    ON c.c_nationkey = n.n_nationkey
JOIN {{ source('raw', 'REGION') }} r
    ON n.n_regionkey = r.r_regionkey