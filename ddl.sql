-- Create CarInventory table
CREATE TABLE Inventory (
    inventory_id SERIAL PRIMARY KEY,
    vin VARCHAR(17) UNIQUE,
    brand VARCHAR(255),
    model VARCHAR(255),
    year INTEGER,
    color VARCHAR(255),
    condition VARCHAR(10),
    price Numeric(10, 2),
    quantity INTEGER
);

-- Create Customers table
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(20)
);

-- Create Salesperson table
CREATE TABLE salesperson (
    saleperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(20)
);

-- Create Mechanics table
CREATE TABLE mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    phone VARCHAR(20)
);

-- Create Sales table
CREATE TABLE Sales (
    sale_id SERIAL PRIMARY KEY,
    inventory_id INTEGER,
    customer_id INTEGER,
    saleperson_id INTEGER,
    sale_date DATE,
    sale_price Numeric(10, 2),
    FOREIGN KEY (inventory_id) REFERENCES Inventory(inventory_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (saleperson_id) REFERENCES Salesperson(saleperson_id)
);

-- Create Serviceticket table
CREATE TABLE service_ticket (
    service_ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    car_serial INTEGER,
    mechanic_id INTEGER,
    service_date DATE,
    service_detail TEXT,
    amount Numeric(10, 2),
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create Invoice table
CREATE TABLE invoice (
    invoice_id SERIAL PRIMARY KEY,
    sale_id INTEGER,
    total_amount Numeric(10, 2),
    invoice_Date DATE,
    FOREIGN KEY (sale_id) REFERENCES Sales(sale_id)
);