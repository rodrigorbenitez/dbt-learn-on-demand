with customers as (

    select * from {{ ref('stg_customers')}}

),
payments as (

    select * from {{ ref('stg_payments') }}

),

final as (

SELECT 
payments.orderid,
customers.customer_id,
payments.amount

FROM payments
JOIN customers ON payments.id=customers.customer_id


)
select * from final

