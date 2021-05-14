with customers as (

    select * from {{ ref('stg_customers')}}

),
payments as (

    select * from {{ ref('stg_payments') }}

),

final as (

SELECT 
payments.order_id,
customers.customer_id,
payments.amount

FROM payments
JOIN customers ON payments.payment_id=customers.customer_id


)
select * from final

