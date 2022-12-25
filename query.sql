CREATE TABLE family_member_level(
	family_member_level_id SERIAL PRIMARY KEY,
	level smallint,
	description VARCHAR
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
	family_member_level_id integer,
	CONSTRAINT "FK_family_member_level_id" FOREIGN KEY ("family_member_level_id")
		REFERENCES family_member_level (family_member_level_id)
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


INSERT INTO family_member_level (level, description) VALUES
(1,'susunan keluarga tingkat pertama'),
(2,'susunan keluarga tingkat kedua'),
(3,'susunan keluarga tingkat ketiga');	
	
SELECT * FROM family_member_level;

INSERT INTO family_members (name, gender, family_member_level_id) VALUES 
('bani', 'L', 1),
('budi', 'L', 2),
('nida', 'P', 2),
('andi', 'L', 2),
('sigit', 'L', 2),
('hari', 'L', 3),
('siti', 'P', 3),
('bila', 'P', 3),
('lesti', 'P', 3),
('diki', 'L', 3),
('doni', 'L', 3),
('toni', 'L', 3);

SELECT * FROM family_members;

INSERT INTO products (product_name, product_price) VALUES
('Samsung Universe 9', 1249),
('Samsung Galaxy Book', 1499),
('iPhone 9', 549),
('iPhone X', 899),
('Huawei P30', 499);

SELECT * FROM products;

INSERT INTO assets (family_member_id, product_id) VALUES
(2, 1),
(2, 1),
(6, 3),
(7, 4),
(3, 5),
(8, 1),
(9, 5),
(9, 4),
(4, 1),
(10, 2),
(5, 5),
(11, 4);

SELECT * FROM assets;


