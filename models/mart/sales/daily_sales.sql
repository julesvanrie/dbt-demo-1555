select  
    *
from
    {{ ref('int_daily_sales') }}
order by
    date_date