Select f.title,
	Count(r.rental_id) as times_rented
From film as f
Join inventory as i On f.film_id=i.film_id
Left Join rental as r On i.inventory_id=r.inventory_id
Group By f.title
Order by times_rented ASC
Limit 10

