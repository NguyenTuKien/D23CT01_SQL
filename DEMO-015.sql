alter table Students 
modify student_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
modify birth_date DATE,
modify email VARCHAR(255) NOT NULL ,
modify phone VARCHAR(50) NOT NULL ,
add column created_at DATETIME DEFAULT CURRENT_TIMESTAMP