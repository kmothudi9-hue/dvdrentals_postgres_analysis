Select date_trunc('month',payment_date) as month,
	Sum(amount) as revenue,
	Count(payment_id) as num_payments
From payment
Group by month
Order by month