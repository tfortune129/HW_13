INSERT INTO customer(
    first_name,
    last_name,
    phone,
    email
) VALUES(
    'Yona',
    'Fortune',
    64666,
    'yonafortune@gmail.com'
),
(
    'Trinisia',
    'Fortune',
    91700,
    'tfortune@gmail.com'
)

select * from customer

INSERT INTO employee(
    employee_id,
    first_name,
    last_name
) VALUES(
    215,
    'Josh',
    'Pereson'
),
(
    512,
    'Tasha',
    'Obrian'
)

select * from employee

INSERT INTO movie(
    movie_id,
    movie_name,
    genre
) VALUES(
    12,
    'The Avatar',
    'Sci-fi'
),
(
    35,
    'Rush Hour',
    'Comedy/Action'
)

select * from movie

INSERT INTO theater(
    theater_id,
    theater_name,
    theater_location
) VALUES(
    010,
    'AMC Theaters',
    '23 Columbus Circle'
),
(
    2454,
    'Regal Theaters',
    '123 42nd street'
)

select * from theater

INSERT INTO booking(
    customer_id
) VALUES(
    1,
    2
)

select * from booking

INSERT INTO tickets(
    ticket_id,
    ticket_number,
    price,
    show_date,
    movie_id,
    employee_id
) VALUES(
    12,
    1,
    12.99,
    '1/2/22',
    35,
    512
),
(
    35,
    2,
    13.99,
    '1/5/22',
    12,
    215
)

select * from tickets

--Erroring out after first value because couldnt alter foreign key in ddl
--to connect two inputs. Need to revist.