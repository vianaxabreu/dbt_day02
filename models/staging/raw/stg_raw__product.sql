with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        products_id,
        cast(purchse_price AS FLOAT64) AS purchase_price

    from source

)

select * from renamed
