create table companies (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  created_at timestamp with time zone default timezone('utc'::text, now())
);

create table users (
  id uuid primary key default auth.uid(),
  email text unique not null,
  name text,
  role text check (role in ('admin', 'recruiter')) default 'recruiter',
  company_id uuid references companies(id) on delete cascade,
  created_at timestamp with time zone default timezone('utc'::text, now())
);

create table jobs (
  id uuid primary key default gen_random_uuid(),
  company_id uuid references companies(id) on delete cascade,
  title text not null,
  description text,
  created_by uuid references users(id) on delete set null,
  created_at timestamp with time zone default timezone('utc'::text, now())
);

create table candidates (
  id uuid primary key default gen_random_uuid(),
  job_id uuid references jobs(id) on delete cascade,
  name text,
  cv_url text,
  uploaded_by uuid references users(id) on delete set null,
  created_at timestamp with time zone default timezone('utc'::text, now())
);

create table matches (
  id uuid primary key default gen_random_uuid(),
  candidate_id uuid references candidates(id) on delete cascade,
  job_id uuid references jobs(id) on delete cascade,
  score integer check (score >= 0 and score <= 100),
  summary text,
  created_at timestamp with time zone default timezone('utc'::text, now())
);

