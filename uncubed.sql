
-- create table syntax here 
--company table 
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies` (
  `id` integer PRIMARY KEY AUTOINCREMENT,
  `name` varchar(50),
  `size` integer,  
  `industry` varchar(50)
);

--job table 
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
	'id' integer PRIMARY KEY AUTOINCREMENT, 
  'company' integer,
  'title' varchar(50),
  'description' text,
  'link' varchar(255) 
  );


--enter some sample data here 

INSERT INTO 'companies' ('id','name', 'industry') VALUES (1,'Vimeo', 'media'), (2,'Knewton', 'education');
INSERT INTO 'jobs' ('title', 'company') VALUES ('Data Analyst',1), ('API Support Engineer',1), ('Backend Engineer, Web',1), ('Data Science Internship',2), ('Software Engineering Internship',2);

--job id, job title, company name 
SELECT jobs.id, jobs.title, companies.name FROM jobs JOIN companies ON jobs.company = companies.id;
--  UPDATE jobs SET title = 'Support Engineer' WHERE id = 2;
-- DELETE FROM jobs WHERE id = 3;