select
    cast(id as bigint) as sale_id,
    cast(sale_date as date) as sale_date,
    cast(product_id as bigint) as product_id,
    cast(customer_id as bigint) as customer_id, --  Faltaba esta columna
    cast(store_id as bigint) as store_id,       --  Faltaba esta columna
    cast(quantity as int) as quantity,
    cast(amount as decimal(12,2)) as unit_price,
    cast(quantity as int) * cast(amount as decimal(12,2)) as sales_amount
from {{ source('bronze', 'sales_raw') }}