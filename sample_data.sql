-- Sample Developers
INSERT INTO Developers (name, team) VALUES
('Alice Johnson', 'Frontend'),
('Bob Smith', 'Backend'),
('Charlie Lee', 'QA');

-- Sample bugs
INSERT INTO Bugs (title, description, severity, status, dev_id, created_at, closed_at) VALUES
('Login page crash', 'App crashes on invalid login input', 'High', 'Closed', 1, '2025-08-01', '2025-08-03'),
('API timeout', 'Payments API fails intermittently', 'Critical', 'In Progress', 2, '2025-08-05', NULL),
('UI alignment issue', 'Navbar misaligned in mobile view', 'Low', 'Closed', 1, '2025-08-07', '2025-08-09'),
('Data mismatch', 'Report totals don’t match database', 'Medium', 'Reopened', 3, '2025-08-10', NULL),
('Forgot password fails', 'Reset email not sent', 'High', 'Closed', 2, '2025-08-12', '2025-08-14');
