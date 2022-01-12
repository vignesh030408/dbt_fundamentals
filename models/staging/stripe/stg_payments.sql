with payments as (
  select
        ID,
        ORDERID AS ORDER_ID,
        PAYMENTMETHOD AS PAYMENT_METHOD,
        STATUS,
        AMOUNT/100 AS AMOUNT,
        CREATED AS CREATED_AT
  from  raw.stripe.payment
)
select * from payments