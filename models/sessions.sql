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
