CREATE TABLE random_data (
    id SERIAL PRIMARY KEY,
    random_number INT NOT NULL
);

INSERT INTO random_data (random_number)
SELECT FLOOR(RANDOM() * 100 + 1)::INT
FROM generate_series(1, 20);
