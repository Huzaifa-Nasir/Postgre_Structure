INSERT INTO users (id, email, name, role, company_id) VALUES
('11111111-1111-1111-1111-111111111111', 'admin@acme.com', 'Alice Admin', 'admin', (SELECT id FROM companies WHERE name='Acme Recruitment')),
('22222222-2222-2222-2222-222222222222', 'recruiter@acme.com', 'Bob Recruiter', 'recruiter', (SELECT id FROM companies WHERE name='Acme Recruitment')),
('33333333-3333-3333-3333-333333333333', 'recruiter@brightfuture.com', 'Carol Recruiter', 'recruiter', (SELECT id FROM companies WHERE name='Bright Future Staffing'));

