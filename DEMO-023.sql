alter table Inventory
modify item_id int not null primary key,
modify quantity int not null default 0,
modify unit_price decimal(10, 2) not null default 0.0,
modify status enum('IN_STOCK', 'OUT_OF_STOCK', 'STOPPED') not null default 'IN_STOCK',
modify last_updated datetime default current_timestamp,
add column note varchar(255),
drop column temp_col
