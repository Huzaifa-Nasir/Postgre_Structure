INSERT INTO matches (candidate_id, job_id, score, summary) VALUES
(
  (SELECT id FROM candidates WHERE name='David Candidate'),
  (SELECT id FROM jobs WHERE title='Senior Developer'),
  85,
  'Strong backend skills and relevant experience.'
),
(
  (SELECT id FROM candidates WHERE name='Eva Candidate'),
  (SELECT id FROM jobs WHERE title='Project Manager'),
  78,
  'Good project management background.'
);