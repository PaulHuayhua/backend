-- Inserción en product, supplier, customer y user (ya los tienes, los repito)
INSERT INTO product (name, description, size, stock, price, expiration_date, category)
VALUES
('Arroz', 'Del Campo', '50kg', 50, 4.20, '2025-12-31', 'Abarrotes'),
('Coca Cola', 'Sabor original', '500ml', 100, 1.50, '2025-08-10', 'Bebidas'),
('Coca Cola', 'Sabor zero azúcar', '1l', 80, 1.60, '2025-08-10', 'Bebidas');

INSERT INTO supplier (company, supply_type, address, email_business, cell_phone, ruc)
VALUES 
('Distribuidora Andina', 'Bebidas', 'Av. Perú 123', 'contacto@andina.com', '912345678', '20123456789'),
('SnackExpress', 'Snacks', 'Calle Los Olivos 456', 'ventas@snackexpress.com', '987654321', '20456789123'),
('Frutas del Valle', 'Frutas', 'Jr. Amazonas 789', 'luis@frutasvalle.com', '923456789', '20567891234');

INSERT INTO customer (first_name, last_name) 
VALUES
('Carlos', 'Ramírez'),
('Ana María', 'González'),
('José', 'Pérez'),
('Miguel Ángel', 'Zapata');

INSERT INTO [user] (name, email, password_hash, rol)
VALUES
('Juan', 'juan.perez@mail.com', 'admin123', 'Administrador'),
('Ana', 'ana.gomez@mail.com', 'password456', 'Empleado'),
('Carlos', 'carlos.ruiz@mail.com', 'password789', 'Empleado');

-- Inserción en sale (ventas)
INSERT INTO sale (issue_date, total_price, customer_identifier, user_identifier)
VALUES
('2025-05-20 10:30:00', 12.30, 'Efectivo', 1, 1),
('2025-05-21 14:45:00', 3.20, 'Yape', 2, 2);

-- Inserción en sale_detail 
INSERT INTO sale_detail (amount, subtotal, sale_identifier, product_identifier)
VALUES
(2, 8.40, 1, 1),
(2, 3.20, 2, 2);

-- Inserción en buys (compras)
INSERT INTO buys (buys_date, total_price, user_identifier, supplier_identifier)
VALUES
('2025-05-18 09:00:00', 100.00, 'Tarjeta', 3, 1), 
('2025-05-19 11:15:00', 50.00, 'Efectivo', 1, 2);

-- Inserción en buys_detail (detalle de compras)
INSERT INTO buys_detail (amount, unit_cost, subtotal, buys_identifier, product_identifier)
VALUES
(50, 1.50, 75.00, 1, 2),
(20, 1.25, 25.00, 2, 3); 
