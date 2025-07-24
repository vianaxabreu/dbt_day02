
select
    orders_id,
    sum(revenue) as total_revenue
from {{ ref('int_sales_margin') }}
group by 1
having total_revenue < 0