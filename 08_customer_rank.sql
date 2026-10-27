With customer_spend AS (
Select c.customer_id, c.first_name ||' '|| c.last_name as customer_name, 
s.store_id,
	Sum(p.amount) as total_spent
From customer as c
Join payment as p ON c.customer_id=p.customer_id
Join store as s ON c.store_id=s.store_id
Group By c.customer_id, s.store_id
)
Select customer_id, customer_name, store_id, total_spent, 
Rank() over ( Partition By store_id
Order by  total_spent Desc) as rank_in_store, 
Sum(total_spent) Over(Partition By store_id) as store_total
From customer_spend
Order by store_id, rank_in_store