ALTER TABLE Employee_Projects
  ADD COLUMN isTechLead bool,
  ADD CONSTRAINT unique_tech_lead_per_project UNIQUE (projectId, isTechLead);
