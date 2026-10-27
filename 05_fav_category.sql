Select cat.name as category, 
	Count(r.rental_id) as times_rented
From category as cat
Join film_category as fc ON cat.category_id=fc.category_id
Join film as f ON fc.film_id=f.film_id
Join inventory as i ON i.film_id=i.film_id
Join rental as r ON i.inventory_id=r.inventory_id
Group By cat.name
Order By times_rented Desc