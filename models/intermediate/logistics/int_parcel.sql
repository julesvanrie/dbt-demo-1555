select
    *,
    if(date_diff(date_delivery, date_purchase, DAY) > 5, 1, 0) as delayed
from
    {{ ref('stg_raw__parcel') }}