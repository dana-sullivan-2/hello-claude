-- Devices associated with users
CREATE TABLE devices (
    device_id    SERIAL PRIMARY KEY,
    user_id      INT          NOT NULL REFERENCES users(user_id),
    device_type  VARCHAR(50),
    os           VARCHAR(50),
    browser      VARCHAR(50),
    first_seen_at TIMESTAMP   NOT NULL DEFAULT NOW()
);
