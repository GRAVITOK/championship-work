CREATE TABLE products (
	id UUID PRIMARY KEY,
	name text,
	price NUMERIC,
	min_stock INTEGER,
	vending_machines_id UUID,
	description TEXT,
	quantity_available INTEGER,
	sales_trend NUMERIC
);
ALTER TABLE products
	ADD CONSTRAINT fk_products_vm
	FOREIGN key (vending_machines_id)
	REFERENCES vending_machines(id);