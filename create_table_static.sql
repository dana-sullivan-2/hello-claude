CREATE TABLE random_data_static (
    id SERIAL PRIMARY KEY,
    random_number INT NOT NULL
);

INSERT INTO random_data_static (random_number) VALUES
(42), (17), (83), (56), (29),
(74), (11), (95), (38), (63),
( 7), (88), (51), (24), (76),
(33), (67), (14), (92), (45);
