--Car--
CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    make VARCHAR NOT NULL,
    model VARCHAR NOT NULL,
    color VARCHAR NOT NULL,
    car_year VARCHAR NOT NULL,
    price VARCHAR NOT NULL,
);

ALTER TABLE car
ALTER COLUMN price DROP NOT NULL;

ALTER TABLE car
DROP COLUMN price;

SELECT*
FROM car;

-- Staff--
CREATE TABLE staff(
    staff_id SERIAL PRIMARY KEY,
    full_name VARCHAR,
    phone_num VARCHAR,
    email VARCHAR,
    department VARCHAR
);

SELECT*
FROM staff;


-- Service Ticket--
CREATE TABLE service_ticket (
    ticket_id SERIAL PRIMARY KEY,
    car_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    staff_id INTEGER,
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    service_cost VARCHAR,
    service_type VARCHAR,
    service_date VARCHAR
);

SELECT*
FROM service_ticket;


-- Customer--
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    car_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    full_name VARCHAR NOT NULL,
    phone_num VARCHAR,
    email VARCHAR,
    home_address VARCHAR NOT NULL
);

SELECT *
FROM customer;


-- Invoice--
CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    car_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    staff_id INTEGER,
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    inv_date VARCHAR,
    total VARCHAR
);


SELECT *
FROM invoice;