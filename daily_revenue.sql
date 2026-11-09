SELECT order_date, store,
    SUM(quantity * unit_price) AS gross_revenue,
    COUNT(DISTINCT order_id) AS order_count
FROM {{ ref('stg_orders') }}
WHERE quantity > 0 AND unit_price >= 0
GROUP BY 1,2
