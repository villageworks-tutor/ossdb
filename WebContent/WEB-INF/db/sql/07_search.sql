select
	packedsales.psales_no,
	packedsales.psales_date,
--	packedsales.emp_id,
	employee.emp_name,
--	packedsales.cust_id,
	customer.cust_name,
	packedsales.total
from
	packedsales
	left join employee on packedsales.emp_id = employee.emp_id
	left join customer on packedsales.cust_id = customer.cust_id
where
	psales_date between '1994-10-01' and '1995-03-31'
order by packedsales.psales_no;

