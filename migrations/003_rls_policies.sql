-- CREATE POLICY "Company can only read their own Data"
-- ON companies
-- FOR select
-- USING(auth.uid()=id)


CREATE POLICY "Allow company data to be read by users belonging to that company"
ON companies
FOR select
USING (
  EXISTS (
    SELECT 1 FROM users WHERE users.id = auth.uid() AND users.company_id = companies.id
  )
);


create policy "Users can view their data"
on users
for select
using (id = auth.uid());    

create policy "Users can view jobs for their company"
on jobs
for select
using (
    EXISTS (
    SELECT 1 FROM users WHERE user.id = auth.id() AND users.company_id = jobs.company_id
    )) 