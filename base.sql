CREATE TABLE reservation(
	id INT NOT NULL,
	time DATE,
	type_id INT NOT NULL,
	room_number INT NOT NULL,
	manager_id INT NOT NULL,
	guest_id INT NOT NULL,
	num_of_guest INT,
	check_in DATE,
	check_out DATE,
	payment_id INT,
	state INT,
	memo text,
	successful INT
);


CREATE TABLE reservation_type(
	name VARCHAR(20)
);

CREATE TABLE payment(
	id INT NOT NULL,
	type_id INT,
	price INT NOT NULL
);

CREATE TABLE payment_details(
	payment_id INT NOT NULL,
	contents VARCHAR(20),
	item_price INT
);

CREATE TABLE payment_type(
	id INT NOT NULL,
	name VARCHAR(20)
);

CREATE TABLE imployee_information(
	id INT NOT NULL,
	name VARCHAR(20),
	sex VARCHAR(5),
	date_of_birth DATE,
	date_of_join DATE,
	date_of_leave DATE,
	contact_phone VARCHAR(20),
	contact_email VARCHAR(20),
	address VARCHAR(20),
	type_id INT,
	position_id INT,
	area VARCHAR(20),
	salary INT,
	language VARCHAR(20)

);



CREATE TABLE guest_information(
	id INT NOT NULL,
	name VARCHAR(20),
	sex VARCHAR(20),
	date_of_birth DATE,
	contact_phone VARCHAR(20),
	contact_email VARCHAR(20),
	address VARCHAR(20),
	country VARCHAR(20),
	language VARCHAR(20),
	belong VARCHAR(20),
	type_id INT NOT NULL,
	smoking BOOLEAN,
	memo TEXT
);


CREATE TABLE room_information(
	room_number INT NOT NULL,
	type_id INT,
	floor INT,
	state_in_room BOOLEAN,
	state_cleaned BOOLEAN,
	state_transaction INT,
	target_temperature DOUBLE(4,1),
	target_humidity DOUBLE(4,1)
);


CREATE TABLE room_type(
	id INT NOT NULL,
	name varchar(20),
	capacity INT,
	smoking BOOLEAN,
	price INT
);

CREATE TABLE room_equipment(
	room_number INT,
	equipment_id INT,
	count INT
);


CREATE TABLE equipment(
	id INT,
	name VARCHAR(20),
	type INT,
	count INT,
	seller VARCHAR(20)
);

CREATE TABLE equipment_log(
	id INT,
	time DATE,
	room_number INT,
	equipment_id INT,
	count INT,
	type INT,
	reason TEXT
);


CREATE TABLE keycard(
	id INT NOT NULL,
	type_id INT,
	room_number INT,
	guest_id INT
);



CREATE TABLE keycard_type(
	id INT NOT NULL,
	name VARCHAR(20)
);


CREATE TABLE room_temperature_log(
	id INT NOT NULL,
	time DATE,
	room_number INT,
	temperature DOUBLE(4,1),
	humidity DOUBLE(4,1)
);CREATE TABLE reservation(
   id INT NOT NULL,
   time DATE,
   type_id INT NOT NULL,
   room_number INT NOT NULL,
   manager_id INT NOT NULL,
   guest_id INT NOT NULL,
   num_of_guest INT,
   check_in DATE,
   check_out DATE,
   payment_id INT,
   state INT,
   memo CHAR(100),
   successful INT
);


CREATE TABLE reservation_type(
   name VARCHAR(20)
);

CREATE TABLE payment(
   id INT NOT NULL,
   type_id INT,
   price INT NOT NULL
);

CREATE TABLE payment_details(
   payment_id INT NOT NULL,
   contents VARCHAR(20),
   item_price NUMBER
);

CREATE TABLE payment_type(
   id INT NOT NULL,
   name VARCHAR(20)
);

CREATE TABLE imployee_information(
   id INT NOT NULL,
   name VARCHAR(20),
   sex VARCHAR(5),
   date_of_birth DATE,
   date_of_join DATE,
   date_of_leave DATE,
   contact_phone VARCHAR(20),
   contact_email VARCHAR(20),
   address VARCHAR(20),
   type_id INT,
   position_id INT,
   area VARCHAR(20),
   salary INT,
   language VARCHAR(20)

);



CREATE TABLE guest_information(
   id INT NOT NULL,
   name VARCHAR(20),
   sex VARCHAR(20),
   date_of_birth DATE,
   contact_phone VARCHAR(20),
   contact_email VARCHAR(20),
   address VARCHAR(20),
   country VARCHAR(20),
   language VARCHAR(20),
   belong VARCHAR(20),
   type_id INT NOT NULL,
   smoking BOOLEAN,
   memo TEXT
);


CREATE TABLE room_information(
   room_number INT NOT NULL,
   type_id INT,
   floor INT,
   state_in_room BOOLEAN,
   state_cleaned BOOLEAN,
   state_transaction INT,
   target_temperature DOUBLE(4,1),
   target_humidity DOUBLE(4,1)
);


CREATE TABLE room_type(
   id INT NOT NULL,
   name varchar(20),
   capacity INT,
   smoking BOOLEAN,
   price INT
);

CREATE TABLE room_equipment(
   room_number INT,
   equipment_id INT,
   count INT
);


CREATE TABLE equipment(
   id INT,
   name VARCHAR(20),
   type INT,
   count INT,
   seller VARCHAR(20)
);

CREATE TABLE equipment_log(
   id INT,
   time DATE,
   room_number INT,
   equipment_id INT,
   count INT,
   type INT,
   reason TEXT
);


CREATE TABLE keycard(
   id INT NOT NULL,
   type_id INT,
   room_number INT,
   guest_id INT
);



CREATE TABLE keycard_type(
   id INT NOT NULL,
   name VARCHAR(20)
);


CREATE TABLE room_temperature_log(
   id INT NOT NULL,
   time DATE,
   room_number INT,
   temperature DOUBLE(4,1),
   humidity DOUBLE(4,1)
);


CREATE TABLE membership_type(
   id INT,
   name VARCHAR(20)
);

CREATE TABLE membership(
   guest_id INT,
   type_id INT,
   start DATE,
   end DATE,
   point INT
);


CREATE TABLE employee_type(
   id INT NOT NULL,
   name VARCHAR(20)
);

CREATE TABLE employee_position(
   id INT,
   name VARCHAR(20)
);


CREATE TABLE attendance(
   id INT,
   employee_id INT,
   work_start_time DATE,
   work_end_time DATE
);


CREATE TABLE complain(
   id INT,
   manager_id INT,
   guest_id INT,
   type_id INT,
   contents TEXT,
   completed BOOLEAN
);

CREATE TABLE guest_type(
   id INT,
   name VARCHAR(20)
);

CREATE TABLE complain_type(
   id INT,
   name VARCHAR(20)
);

CREATE TABLE reservation_log(
   id INT,
   time DATE,
   type_id INT,
   room_number INT,
   manager_id INT,
   guest_id INT,
   num_of_guest INT,
   check_in DATE,
   check_out DATE,
   price INT,
   state INT,
   memo TEXT,
   successful INT
);


CREATE TABLE membership_type(
	id INT,
	name VARCHAR(20)
);

CREATE TABLE membership(
	guest_id INT,
	type_id INT,
	start DATE,
	end DATE,
	point INT
);


CREATE TABLE employee_type(
	id INT NOT NULL,
	name VARCHAR(20)
);

CREATE TABLE employee_position(
	id INT,
	name VARCHAR(20)
);


CREATE TABLE attendance(
	id INT,
	employee_id INT,
	work_start_time DATE,
	work_end_time DATE
);


CREATE TABLE complain(
	id INT,
	manager_id INT,
	guest_id INT,
	type_id INT,
	contents TEXT,
	completed BOOLEAN
);

CREATE TABLE guest_type(
	id INT,
	name VARCHAR(20)
);

CREATE TABLE complain_type(
	id INT,
	name VARCHAR(20)
);

CREATE TABLE reservation_log(
	id INT,
	time DATE,
	type_id INT,
	room_number INT,
	manager_id INT,
	guest_id INT,
	num_of_guest INT,
	check_in DATE,
	check_out DATE,
	price INT,
	state INT,
	memo TEXT,
	successful INT
);
