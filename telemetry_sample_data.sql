-- Products
INSERT INTO products (name, version, platform, created_at) VALUES
('DataPulse',  '2.1.0', 'web',     '2024-01-15 09:00:00'),
('FlowTrack',  '1.4.2', 'mobile',  '2024-03-01 11:30:00'),
('NexaDash',   '3.0.1', 'desktop', '2024-05-20 08:00:00');

-- Users
INSERT INTO users (email, country, created_at) VALUES
('alice.morgan@example.com',  'US', '2024-02-01 10:00:00'),
('ben.carter@example.com',    'GB', '2024-02-14 14:22:00'),
('clara.diaz@example.com',    'MX', '2024-03-10 09:15:00'),
('david.kim@example.com',     'KR', '2024-04-05 16:45:00'),
('elena.rossi@example.com',   'IT', '2024-05-22 13:00:00');

-- Devices
INSERT INTO devices (user_id, device_type, os, browser, first_seen_at) VALUES
(1, 'desktop', 'Windows 11',  'Chrome 124',  '2024-02-01 10:00:00'),
(1, 'mobile',  'iOS 17',      'Safari 17',   '2024-03-15 08:30:00'),
(2, 'desktop', 'macOS 14',    'Firefox 125', '2024-02-14 14:22:00'),
(3, 'tablet',  'Android 14',  'Chrome 123',  '2024-03-10 09:15:00'),
(4, 'desktop', 'Windows 10',  'Edge 124',    '2024-04-05 16:45:00'),
(5, 'mobile',  'iOS 17',      'Safari 17',   '2024-05-22 13:00:00'),
(5, 'desktop', 'macOS 14',    'Chrome 124',  '2024-06-01 10:10:00');

-- Sessions
INSERT INTO sessions (user_id, product_id, device_id, started_at, ended_at, duration_seconds) VALUES
(1, 1, 1, '2024-06-01 09:00:00', '2024-06-01 09:42:00', 2520),
(1, 1, 2, '2024-06-03 17:15:00', '2024-06-03 17:30:00',  900),
(2, 1, 3, '2024-06-02 10:00:00', '2024-06-02 11:05:00', 3900),
(3, 2, 4, '2024-06-04 08:30:00', '2024-06-04 08:55:00', 1500),
(4, 3, 5, '2024-06-05 14:00:00', '2024-06-05 14:50:00', 3000),
(5, 2, 6, '2024-06-06 07:45:00', '2024-06-06 08:10:00', 1500),
(5, 3, 7, '2024-06-07 13:00:00', '2024-06-07 13:35:00', 2100),
(2, 3, 3, '2024-06-08 09:30:00', '2024-06-08 10:00:00', 1800),
(1, 2, 1, '2024-06-09 11:00:00', '2024-06-09 11:20:00', 1200),
(4, 1, 5, '2024-06-10 15:00:00', '2024-06-10 15:45:00', 2700);

-- Events
INSERT INTO events (session_id, event_type, event_name, properties, occurred_at) VALUES
(1,  'page_view',   'dashboard_viewed',    '{"page": "home"}',                          '2024-06-01 09:00:05'),
(1,  'click',       'filter_applied',      '{"filter": "date_range", "value": "7d"}',   '2024-06-01 09:03:12'),
(1,  'feature_use', 'report_exported',     '{"format": "csv", "rows": 1402}',           '2024-06-01 09:15:44'),
(1,  'error',       'export_timeout',      '{"code": 504, "retry": true}',              '2024-06-01 09:15:50'),
(2,  'page_view',   'dashboard_viewed',    '{"page": "home"}',                          '2024-06-03 17:15:02'),
(2,  'click',       'chart_drilldown',     '{"chart": "revenue", "segment": "mobile"}', '2024-06-03 17:18:30'),
(3,  'page_view',   'settings_viewed',     '{"page": "settings"}',                      '2024-06-02 10:00:08'),
(3,  'feature_use', 'alert_created',       '{"metric": "error_rate", "threshold": 5}',  '2024-06-02 10:22:19'),
(4,  'page_view',   'home_viewed',         '{"page": "home"}',                          '2024-06-04 08:30:03'),
(4,  'click',       'notification_opened', '{"notification_id": 881}',                  '2024-06-04 08:34:50'),
(5,  'page_view',   'analytics_viewed',    '{"page": "analytics"}',                     '2024-06-05 14:00:06'),
(5,  'feature_use', 'funnel_created',      '{"steps": 4, "name": "Onboarding"}',        '2024-06-05 14:12:33'),
(5,  'click',       'save_clicked',        '{"item": "funnel"}',                        '2024-06-05 14:13:01'),
(6,  'page_view',   'home_viewed',         '{"page": "home"}',                          '2024-06-06 07:45:04'),
(7,  'page_view',   'analytics_viewed',    '{"page": "analytics"}',                     '2024-06-07 13:00:09'),
(7,  'error',       'data_load_failed',    '{"code": 500, "component": "chart"}',       '2024-06-07 13:05:22'),
(8,  'page_view',   'dashboard_viewed',    '{"page": "home"}',                          '2024-06-08 09:30:05'),
(8,  'feature_use', 'report_exported',     '{"format": "pdf", "rows": 320}',            '2024-06-08 09:48:17'),
(9,  'page_view',   'home_viewed',         '{"page": "home"}',                          '2024-06-09 11:00:03'),
(10, 'page_view',   'dashboard_viewed',    '{"page": "home"}',                          '2024-06-10 15:00:07'),
(10, 'click',       'filter_applied',      '{"filter": "product", "value": "mobile"}',  '2024-06-10 15:08:44'),
(10, 'feature_use', 'report_exported',     '{"format": "csv", "rows": 870}',            '2024-06-10 15:30:19');
