-- Products being tracked
CREATE TABLE products (
    product_id   SERIAL PRIMARY KEY,
    name         VARCHAR(100) NOT NULL,
    version      VARCHAR(20)  NOT NULL,
    platform     VARCHAR(50),
    created_at   TIMESTAMP    NOT NULL DEFAULT NOW()
);
