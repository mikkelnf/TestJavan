CREATE TABLE family_level(
	family_level_id SERIAL PRIMARY KEY,
	level smallint,
	description VARCHAR
);

CREATE TABLE family(
	family_id SERIAL PRIMARY KEY,
	family_level_id integer,
	CONSTRAINT "FK_family_level_id" FOREIGN KEY ("family_level_id")
		REFERENCES family_level (family_level_id)
		ON UPDATE CASCADE
		ON DELETE RESTRICT
);

CREATE TABLE products(
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR,
	product_price integer
);

CREATE TABLE family_members(
	family_member_id SERIAL PRIMARY KEY,
	name VARCHAR,
	gender char(1),
	family_id integer,
	CONSTRAINT "FK_family_id" FOREIGN KEY ("family_id")
		REFERENCES family (family_id)
		ON UPDATE CASCADE
		ON DELETE RESTRICT
);

CREATE TABLE assets(
	id SERIAL PRIMARY KEY,
	family_member_id integer,
	product_id integer,
	CONSTRAINT "FK_product_id" FOREIGN KEY ("product_id")
		REFERENCES products (product_id)
		ON UPDATE CASCADE
		ON DELETE RESTRICT,
	CONSTRAINT "FK_family_member_id" FOREIGN KEY ("family_member_id")
		REFERENCES family_members (family_member_id)
		ON UPDATE CASCADE
		ON DELETE RESTRICT
);