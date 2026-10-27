Select c.customer_id , c.first_name , c.last_name as customer_name ,
	Sum(p.amount) as total_spent,
	Count(r.rental_id) as total_rentals
From customer as c
Join payment as p ON c.customer_id= p.customer_id
Join rental as r ON p.rental_id = r.rental_id
Group By c.customer_id
Order By total_spent Desc
Limit 10