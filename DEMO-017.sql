alter table Products 
modify id int not null auto_increment primary key,
modify price decimal(10, 2) not null,
add constraint chk_price check (price >= 0),
modify status enum('ACTIVE', 'INACTIVE', 'DISCONTINUED') not null default 'ACTIVE',
modify created_at datetime default current_timestamp,
modify category VARCHAR(100) not null,
drop column temp_note
