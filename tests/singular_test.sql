-- Refunds have a negative amount, so the total amount should always be >= 0.
-- Therefore return records where total_amount < 0 to make the test fail.
select
    orders_id,
    sum(revenue) as total_revenue
from {{ ref('int_sales_margin') }}
group by 1
having total_revenue < 0