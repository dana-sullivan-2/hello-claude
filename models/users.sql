-- Registered users of the products
CREATE TABLE users (
    user_id      SERIAL PRIMARY KEY,
    email        VARCHAR(255) UNIQUE NOT NULL,
    country      CHAR(2),
    created_at   TIMESTAMP    NOT NULL DEFAULT NOW()
);
