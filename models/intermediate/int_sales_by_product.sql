select
    product_id,
    sum(turnover) as turnover
from
    {{ ref("int_sales_stock")}}
group by
    product_id