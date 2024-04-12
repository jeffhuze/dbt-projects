{{
    config(materialized='table')
}}
select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,

    -- amount is stored in cents, convert it to dollars
    amount / 100 as amount,
    created as created_at

-- from raw.stripe.payment 
from {{source('stripe','payment')}}
-- dbt build --select stg_payments
-- dbt run --select stg_payments
-- dbt source freshness --select stg_payments
-- dbt test --select stg_payments
-- dbt test --select source:jaffle_shop
