-- CREATE CUSTOMER TABLE
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    phone INTEGER,
    email VARCHAR
);
-- CREATE BOOKING TABLE
CREATE TABLE booking(
    ticket_number SERIAL,
    customer_id INTEGER NOT NULL,
    booking_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);
-- CREATE TICKET TABLE
CREATE TABLE tickets(
    ticket_id INTEGER PRIMARY KEY,
    price NUMERIC(4,2),
    show_date DATE,
    ticket_number INTEGER NOT NULL,
    movie_id INTEGER,
    employee_id INTEGER,
    --FOREIGN KEY (ticket_number) REFERENCES booking(ticket_number),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);
-- CREATE EMPLOYEE TABLE
CREATE TABLE employee(
    employee_id INTEGER PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR
);

-- CREATE MOVIE TABLE
CREATE TABLE movie(
    movie_id INTEGER PRIMARY KEY,
    movie_name VARCHAR,
    genre VARCHAR
);

-- CREATE THEATER TABLE
CREATE TABLE theater(
    theater_id INTEGER PRIMARY KEY,
    theater_name VARCHAR,
    theater_location VARCHAR
);

-- ALTER TABLE tickets
-- ADD FOREIGN KEY (ticket_number) REFERENCES booking(ticket_number)
-- ^^not working????