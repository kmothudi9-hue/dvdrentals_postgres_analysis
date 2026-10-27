Select f.title
	Sum(p.amount) As revenue
From film As f,
From payment as p
Join inventory as i ON f.film_id= i.film_id
Join rental as r ON i.iventory_id= r.inventory.id
Join payment as p ON r.rental.id= p.rental
Group By f.title
Order By revenue DESC
Limit 10