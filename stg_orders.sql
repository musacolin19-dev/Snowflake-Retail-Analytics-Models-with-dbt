SELECT
    CAST(order_id AS VARCHAR) AS order_id,
    CAST(order_date AS DATE) AS order_date,
    TRIM(store) AS store,
    TRY_TO_DECIMAL(quantity, 18, 0) AS quantity,
    TRY_TO_DECIMAL(unit_price, 18, 2) AS unit_price
FROM {{ ref('raw_orders') }}
WHERE order_id IS NOT NULL
