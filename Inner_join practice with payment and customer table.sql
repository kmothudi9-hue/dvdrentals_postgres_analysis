Select customer.customer_id , customer.first_name , customer.last_name , customer.last_update , customer.address_id 
From customer
Inner Join payment
ON customer.customer_id=payment.customer_id

