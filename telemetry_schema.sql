-- Products being tracked
CREATE TABLE products (
    product_id   SERIAL PRIMARY KEY,
    name         VARCHAR(100) NOT NULL,
    version      VARCHAR(20)  NOT NULL,
    platform     VARCHAR(50),
    created_at   TIMESTAMP    NOT NULL DEFAULT NOW()
);

-- Registered users of the products
CREATE TABLE users (
    user_id      SERIAL PRIMARY KEY,
    email        VARCHAR(255) UNIQUE NOT NULL,
    country      CHAR(2),
    created_at   TIMESTAMP    NOT NULL DEFAULT NOW()
);

-- Devices associated with users
CREATE TABLE devices (
    device_id    SERIAL PRIMARY KEY,
    user_id      INT          NOT NULL REFERENCES users(user_id),
    device_type  VARCHAR(50),
    os           VARCHAR(50),
    browser      VARCHAR(50),
    first_seen_at TIMESTAMP   NOT NULL DEFAULT NOW()
);

-- Individual usage sessions
CREATE TABLE sessions (
    session_id   SERIAL PRIMARY KEY,
    user_id      INT          NOT NULL REFERENCES users(user_id),
    product_id   INT          NOT NULL REFERENCES products(product_id),
    device_id    INT          REFERENCES devices(device_id),
    started_at   TIMESTAMP    NOT NULL,
    ended_at     TIMESTAMP,
    duration_seconds INT
);

-- Telemetry events captured within a session
CREATE TABLE events (
    event_id     BIGSERIAL    PRIMARY KEY,
    session_id   INT          NOT NULL REFERENCES sessions(session_id),
    event_type   VARCHAR(50)  NOT NULL,
    event_name   VARCHAR(100) NOT NULL,
    properties   JSONB,
    occurred_at  TIMESTAMP    NOT NULL DEFAULT NOW()
);
