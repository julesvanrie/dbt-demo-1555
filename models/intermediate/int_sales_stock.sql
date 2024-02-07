select
    product_id,
    date_date,
    qty,
    qty * price as turnover
from
    {{ ref("stg_raw__sales") }} as sales
join
    {{ ref("stg_raw__stock") }} as stock
using
    (product_id)