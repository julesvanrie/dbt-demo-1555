select
    extract(year from date_date) as year,
    sum(turnover) as turnover
from
    {{ ref('int_daily_sales') }}
group by
    extract(year from date_date)