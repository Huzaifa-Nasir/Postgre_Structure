INSERT INTO jobs (company_id, title, description, created_by) VALUES
((SELECT id FROM companies WHERE name='Acme Recruitment'), 'Senior Developer', 'Looking for experienced backend developer', '11111111-1111-1111-1111-111111111111'),
((SELECT id FROM companies WHERE name='Bright Future Staffing'), 'Project Manager', 'Experienced project manager needed', '33333333-3333-3333-3333-333333333333');