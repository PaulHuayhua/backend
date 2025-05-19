DROP TABLE IF EXISTS product;

CREATE TABLE product (
    identifier INT NOT NULL IDENTITY(1,1),
    name VARCHAR(70) NOT NULL,
    description VARCHAR(60) NOT NULL,
    size VARCHAR(20) NULL,
    stock INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    expiration_date DATE NULL,
    state CHAR(1) NOT NULL DEFAULT 'A',
    category VARCHAR(100) NOT NULL,
    CONSTRAINT uq_name_size_category UNIQUE (name, category, size, description),
    CONSTRAINT chk_stock_product CHECK (stock >= 0),
    CONSTRAINT chk_price_product CHECK (price >= 0),
    CONSTRAINT chk_status_product CHECK (state IN ('A', 'I')),
    CONSTRAINT chk_name_product CHECK (name NOT LIKE '%[^a-zA-Z áéíóúÁÉÍÓÚñÑ]%'),
    CONSTRAINT pk_producto PRIMARY KEY (identifier)
);


DROP TABLE IF EXISTS supplier;

CREATE TABLE supplier (
   identifier int  NOT NULL IDENTITY(1, 1),
   name varchar(80)  NOT NULL,
   company varchar(100)  NOT NULL,
   supply_type varchar(50)  NOT NULL,
   address varchar(150)  NOT NULL,
   email_business varchar(255)  NOT NULL,
   cellular char(9)  NOT NULL,
   ruc char(11)  NOT NULL,
   registration_date date  NOT NULL DEFAULT GETDATE(),
   state char(1)  NOT NULL DEFAULT 'A',
   CONSTRAINT uq_name_ruc_supplier UNIQUE (name, ruc),
   CONSTRAINT chk_cellular CHECK (LEN(cellular) = 9 AND  cellular LIKE '9%' AND  cellular NOT LIKE '%[^0-9]%'),
   CONSTRAINT chk_state_supplier CHECK (state IN ('A', 'I')),
   CONSTRAINT chk_ruc CHECK (LEN(ruc) = 11 AND ruc NOT LIKE '%[^0-9]%'),
   CONSTRAINT chk_email_business CHECK (email_business LIKE '_%@_%._%' AND LEN(email_business) <= 255 AND email_business NOT LIKE '% %'),
   CONSTRAINT chk_name_supplier CHECK (LEN(name) >= 3 AND name NOT LIKE '%[^a-zA-ZáéíóúÁÉÍÓÚ ]%'),
   CONSTRAINT proveedor_pk PRIMARY KEY  (identifier)
);
-- End of file.
