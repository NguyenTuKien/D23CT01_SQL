alter table DeliveryOrders
modify order_item_id INT not null auto_increment primary key,
modify order_id VARCHAR(50) not null, 
modify customer_phone VARCHAR(20) not null,
modify address VARCHAR(255) not null,
modify shipping_method enum('STANDARD', 'EXPRESS', 'SAME_DAY') not null default 'STANDARD',
modify shipping_fee decimal(10, 2) not null default 0,
modify cod_amount decimal(10, 2) not null default 0,
modify delivery_status enum('PENDING', 'SHIPPING', 'DELIVERED', 'RETURNED', 'CANCELLED') not null default 'PENDING',
modify created_text DATETIME default current_timestamp,
add updated_at DATETIME,
drop temp_note
