alter table Employees 
modify emp_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
modify salary DECIMAL(12,2) NOT NULL default 0,
modify status enum('ACTIVE', 'INACTIVE', 'RESIGNED') not null default 'ACTIVE',
add column employment_type enum('FULL_TIME', 'PART_TIME', 'INTERN') not null default 'FULL_TIME',
add column hire_date date,
drop column temp_info
