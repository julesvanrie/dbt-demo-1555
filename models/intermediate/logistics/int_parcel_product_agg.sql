select
    parcel_id,
    sum(quantity) as quantity
from {{ ref('stg_raw__parcel_product') }}
group by
    parcel_id