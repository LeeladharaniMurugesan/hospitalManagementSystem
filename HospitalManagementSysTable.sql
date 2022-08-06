create table staff_details(
staff_id NUMBER(10)NOT NULL,
staff_name VARCHAR(10) NOT NULL,
dob DATE NOT NULL,
gender VARCHAR(10)NOT NULL,
phone_no NUMBER(15) NOT NULL ,
email_id VARCHAR(20)NOT NULL UNIQUE,
password VARCHAR(20) NOT NULL,
designation VARCHAR(20) NOT NULL,
CONSTRAINT t_pk PRIMARY KEY(staff_id));
desc staff_details;
drop table staff_details;
insert into staff_details values (110,'Ravi','11/03/2001','Male',8870111012,'ravi@gmail.com','1425@r','Cleaner');
select * from staff_details;
---------------------------------------------------------------------------------
create table room_details(
room_id NUMBER(10)NOT NULL,
room_type VARCHAR(20) NOT NULL,
room_location VARCHAR(10) NOT NULL,
numof_beds VARCHAR(10)NOT NULL,
room_status VARCHAR(10) NOT NULL,
CONSTRAINT t_p PRIMARY KEY(room_id));

drop table room_details;
select * from room_details;
--------------------------------------------------------------------------------

create table operationTheatre_details(
theatre_id NUMBER(10)NOT NULL,
theatre_type VARCHAR(20) NOT NULL,
theatre_location VARCHAR(10)NOT NULL,
theatre_status VARCHAR(10) NOT NULL,
CONSTRAINT t_k PRIMARY KEY(theatre_id));

desc operationTheatre_details;
insert into operationTheatre_details values(3,'General Surgery ','1st Floor','Unbooked');
commit;

select * from operationTheatre_details;
-------------------------------------------------------------------------------

create table doctor_details(
staff_id NUMBER(15) CONSTRAINT a_fs REFERENCES staff_details(staff_id),
speciality VARCHAR(20) NOT NULL,
role_type VARCHAR(10) NOT NULL,
normal_fees VARCHAR(20) NOT NULL);

select * from doctor_details;
insert into doctor_details values(100,'Radiology','Permanent',1000);
insert into doctor_details values(101,'Pediatrics','Permanent',1500);
insert into doctor_details values(102,'Cardiologist','visiter',1500);
drop table doctor_details;

commit;
-------------------------------------------------------------------------------
create table doctor_visitdetails(
s_no NUMBER(10) NOT NULL,
visited_date DATE NOT NULL,
from_time VARCHAR(10)NOT NULL,
to_time  VARCHAR(10) NOT NULL,
dailyfees varchar(10) NOT NULL,
staff_id NUMBER(15) CONSTRAINT a_k REFERENCES staff_details(staff_id),
CONSTRAINT t_pt PRIMARY KEY(s_no));
select * from doctor_visitdetails;
insert into doctor_visitdetails values(2,'17/07/2002','5pm','7pm','2000',102);
commit;
--------------------------------------------------------------------------------
create table ambulance(
register_id VARCHAR(20)NOT NULL,
purchase_date DATE NOT NULL,
ambulance_model VARCHAR(10)NOT NULL,
status VARCHAR(10) NOT NULL,
staff_id NUMBER(15) CONSTRAINT a_fk REFERENCES staff_details(staff_id),
CONSTRAINT t_s PRIMARY KEY(register_id));

insert into ambulance values('TN1011','12/09/2021','Mobile ICU','OnDuty',102);
insert into ambulance values('TN1031','12/09/2015','Individual','Not in Use',102);

select * from ambulance;
--------------------------------------------------------------------------------
create table bed_details(
bed_id NUMBER(10)NOT NULL,
bed_type VARCHAR(10)NOT NULL,
bed_status VARCHAR(10)NOT NULL,
bed_size VARCHAR(20)NOT NULL,
room_id NUMBER(15) CONSTRAINT a_ft REFERENCES room_details(room_id),
CONSTRAINT t_ks PRIMARY KEY(bed_id));

select * from bed_details;

insert into bed_details values(6,'Single','Booked','36x75 inches',10);
commit;
drop table bed_details;
--------------------------------------------------------------------------------
create table bookingCancellation_details(
bc_id NUMBER(10)NOT NULL,
booking_date DATE ,
fromdate DATE ,
todate DATE ,
resource_type VARCHAR(10) NOT NULL,
resource_id NUMBER(10) NOT NULL,
bed_id Number(10) CONSTRAINT t_sf REFERENCES bed_details(bed_id),
staff_id NUMBER(10) CONSTRAINT t_sd REFERENCES staff_details(staff_id),
theatre_id NUMBER(10) CONSTRAINT t_ff REFERENCES operationTheatre_details(theatre_id),
CONSTRAINT m_s PRIMARY KEY(bc_id));

drop table bookingCancellation_details;

select * from bookingCancellation_details;
--------------------------------------------------------------------------------
commit;