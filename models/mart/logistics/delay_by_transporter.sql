select
    transporter,
    sum(delayed) as cnt_delayed,
    avg(delayed) as pct_delayed

from {{ ref('int_parcel_id') }}
group by
    transporter