Select s.store_id,
	Sum(p.amount) As revenue
From payment As p
Join staff As st ON p.staff_id= st.staff_id
Join store As s On st.store_id= s.store_id
Group By s.store_id