INSERT INTO candidates (job_id, name, cv_url, uploaded_by) VALUES
((SELECT id FROM jobs WHERE title='Senior Developer'), 'David Candidate', 'https://example.com/cv/david.pdf', '22222222-2222-2222-2222-222222222222'),
((SELECT id FROM jobs WHERE title='Project Manager'), 'Eva Candidate', 'https://example.com/cv/eva.pdf', '33333333-3333-3333-3333-333333333333');