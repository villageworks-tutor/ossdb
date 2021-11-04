select
	packedsales.psales_no,
	packedsales.psales_date,
	employee.emp_name,
	customer.cust_name,
	packedsales.total
from
	packedsales
	left join employee on packedsales.emp_id = employee.emp_id
	left join customer on packedsales.cust_id = customer.cust_id
where
	psales_no = 113
order by packedsales.psales_no;

select
	sales.sales_no,
--  sales.psales_no,
--  sales.prod_id,
  product.prod_id,
  product.prod_name,
  product.cost,
  product.discount,
  product.cost * product.discount,
  sales.quantity,
  sales.price
from
	sales
	left join product on sales.prod_id = product.prod_id
where
	psales_no = 113;