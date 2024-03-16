INSERT INTO Inventory(
    vin,
    brand,
    model,
    year,
    color,
    condition,
    price,
    quantity
) VALUES (
    '1z234z210',
    'toyota',
    'camry',
    2023,
    'white',
    'new',
    23000,
    10
),
(
    '1z232y214',
    'toyota',
    'corrola',
    2024,
    'black',
    'new',
    16000,
    15
)

INSERT INTO Inventory(
    vin,
    brand,
    model,
    year,
    color,
    condition,
    price,
    quantity
) VALUES (
    '1z343o980',
    'lexus',
    'rx500h',
    2024,
    'silver',
    'new',
    60000,
    5
),
(
    '1z232o924',
    'lexus',
    'es',
    2024,
    'red',
    'new',
    45000,
    15
)

INSERT INTO Customers(
    first_name,
    last_name,
    email,
    phone
) VALUES
(
    'alex',
    'costa',
    'costaale234@hotmail.com',
    4088903329
),
(
    'alan',
    'smith',
    'alansmith212@hotmail.com',
    6694302192
),
(
    'lewis',
    'halminton',
    'lewishal32@gmail.com',
    4087009829
)

INSERT INTO salesperson(
    first_name,
    last_name,
    email,
    phone
) VALUES (
    'vinh',
    'do',
    'vinhdo321@yahoo.com',
    '4082209919'
),
(
    'alex',
    'morgan',
    'morganal232@yahoo.com',
    '4083309919'
), (
    'kevin',
    'hart',
    'kevinhart3332@hmail.com',
    5102290919
)

INSERT INTO mechanic(
    first_name,
    last_name,
    phone
) VALUES (
    'thomas',
    'duong',
    4302209819
),
(
    'paul',
    'huynh',
    4089920192
),
(
    'dylan',
    'smith',
    7142339820
)

INSERT INTO Sales(
    inventory_id,
    customer_id,
    saleperson_id,
    sale_date,
    sale_price
)VALUES (
    2,
    1,
    3,
    '2024-01-01',
    62000
)

INSERT INTO Sales(
    inventory_id,
    customer_id,
    saleperson_id,
    sale_date,
    sale_price
)VALUES (
    1,
    2,
    2,
    '2024-02-01',
    20000
)

INSERT INTO service_ticket(
    customer_id,
    car_serial,
    mechanic_id,
    service_date,
    service_detail,
    amount
) VALUES (
    1,
    1234,
    1,
    '2024-02-02',
    'oil change, tire rotation',
    200
),
(
    2,
    1254,
    2,
    '2024-02-03',
    'air filter replaced, alignment',
    350
)

alter table invoice
drop column invoice_Date

INSERT into invoice(
    sale_id,
    total_amount
)
VALUES(
    1,
    63500
),
(
    2,
    21000
)