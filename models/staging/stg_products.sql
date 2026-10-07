select
    cast(product_id as string) as product_id,
    trim(product_name) as product_name,
    trim(category) as category,
    cast(price as decimal(10,2)) as price
from {{ source('bronze', 'products_raw') }}