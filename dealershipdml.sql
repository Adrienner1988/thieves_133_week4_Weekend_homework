--Car--
INSERT INTO car(
    make,
    model,
    color,
    car_year,
    price
) VALUES(
    'Toyota',
    'Corolla',
    'white',
    '2023',
    '25,000'
);

INSERT INTO car(
    make,
    model,
    color,
    car_year,
    price
) VALUES(   
    'Hyundai',
    'IONIC',
    'red',
    '2023',
    '27,000'
), (
    'Jeep',
    'Wrangler',
    'black',
    '2005',
    '10,000'
), (
    'Lexus',
    'NX 300',
    'blue',
    '2020',
    '26,000'
);


-- Staff--
INSERT INTO staff(
    full_name,
    phone_num,
    email,
    department
) VALUES(
    'Janelle Monae',
    '953-278-7323',
    'Janelle.Monae@dealership.com',
    'Sales'
), (
    'Megan Pete',
    '728-243-2020',
    'MeganPete@dealership.com',
    'Sales'
), (
    'Viola Davis',
    '741-852-9630',
    'ViolaDavis@cardealership.com',
    'Finance'
), (
    'John Boyega',
    '866-346-3937',
    'JohnBoyega@cardealership.com',
    'Mechanic'
);


-- Service Ticket--
INSERT INTO service_ticket(
    service_cost,
    service_type,
    service_date
) VALUES(
    '$79.99',
    'Oil change',
    '10/5/2023'
), (
    '$120.00',
    'Tire rotation',
    '10/1/2023'
), (
    '$50.00',
    'Spark plug',
    '10/2/2023'
), (
    '$500.00',
    'New tires',
    '10/4/2023'
);

-- Customer--
INSERT INTO customer(
    full_name,
    phone_num,
    email,
    home_address
) VALUES(
    'James Doe',
    '555-123-4456',
    'JD@gmail.com',
    '888 Lane Ln, Tampa, FL 30036'
), (
    'Janet Doe',
    '555-123-5567',
    'JDoe@gmail.com',
    '888 Lane Ln, Tampa, FL 30036'
), (
    'AppleBottom Jeans',
    '850-555-4321',
    'BootsWithTheFur@yahoo.com',
    '956 Capitol Drive, Tallahassee, Fl 32305'
), (
    'Declan Harp',
    '904-777-8910',
    'UniqueDeclan@hotmail.com','Jacksonville, FL 32205'
);

SELECT*
FROM customer;


-- Invoice--
INSERT INTO invoice(
    inv_date,
    total
) VALUES (
    '10/4/2023',
    '$500.00'
),   (
    '$79.99',
    '10/5/2023'
), (
    '$120.00',
    '10/1/2023'
), (
    '$50.00',
    '10/2/2023'
);