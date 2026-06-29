-- Telemetry events captured within a session
CREATE TABLE events (
    event_id     BIGSERIAL    PRIMARY KEY,
    session_id   INT          NOT NULL REFERENCES sessions(session_id),
    event_type   VARCHAR(50)  NOT NULL,
    event_name   VARCHAR(100) NOT NULL,
    properties   JSONB,
    occurred_at  TIMESTAMP    NOT NULL DEFAULT NOW()
);
