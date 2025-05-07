{#
{{ config(materialized="table") }}
#}
with
    orders_operational as (select * from {{ ref("int_orders_operational") }}),

    orders_oper_agg as (
        select
            date_date,
            count(orders_id) as nb_transactions,
            round(sum(revenue), 0) as revenue,
            round(avg(revenue), 1) as average_basket,
            round(sum(revenue) / count(orders_id), 1) as average_basket_bis,
            round(sum(margin), 0) as margin,
            round(sum(operational_margin), 0) as operational_margin,
            round(sum(purchase_cost), 0) as purchase_cost,
            round(sum(shipping_fee), 0) as shipping_fee,
            round(sum(logcost), 0) as logcost,
            round(sum(ship_cost), 0) as ship_cost,
            sum(quantity) as quantity
        from orders_operational
        group by 1
        order by 1 desc
    )
select *
from orders_oper_agg
