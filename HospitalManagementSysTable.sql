create table staff_details(
staff_id NUMBER(10)NOT NULL,
staff_name VARCHAR(50) NOT NULL,
dob DATE NOT NULL,
gender VARCHAR(10)NOT NULL,
phone_no NUMBER(15) NOT NULL ,
email_id VARCHAR(20)NOT NULL UNIQUE,
password VARCHAR(20) NOT NULL,
designation VARCHAR(30) NOT NULL,
CONSTRAINT t_pk PRIMARY KEY(staff_id));
select * from staff_details;
================================================================================
create table room_details(
room_id NUMBER(10)NOT NULL,
room_type VARCHAR(20) NOT NULL,
room_location VARCHAR(20) NOT NULL,
numof_beds VARCHAR(10)NOT NULL,
room_status VARCHAR(10) NOT NULL,
CONSTRAINT t_p PRIMARY KEY(room_id));

================================================================================

create table operationTheatre_details(
theatre_id NUMBER(10)NOT NULL,
theatre_type VARCHAR(20) NOT NULL,
theatre_location VARCHAR(20)NOT NULL,
theatre_bookedTime VARCHAR(30) NOT NULL,
theatre_status VARCHAR(20) NOT NULL,
CONSTRAINT t_k PRIMARY KEY(theatre_id));
drop table operationTheatre_details;
================================================================================
commit;
desc operationTheatre_details;
create table doctor_details(
staff_id NUMBER(15) CONSTRAINT a_fs REFERENCES staff_details(staff_id),
speciality VARCHAR(20) NOT NULL,
role_type VARCHAR(10) NOT NULL,
normal_fees VARCHAR(20) NOT NULL);

================================================================================
create table doctor_visitdetails(
s_no NUMBER(10) NOT NULL,
visited_date DATE NOT NULL,
from_time VARCHAR(10)NOT NULL,
to_time  VARCHAR(10) NOT NULL,
dailyfees varchar(10) NOT NULL,
staff_id NUMBER(15) CONSTRAINT a_k REFERENCES staff_details(staff_id),
CONSTRAINT t_pt PRIMARY KEY(s_no));
================================================================================
create table ambulance(
ambulance_id VARCHAR(20) NOT NULL,
register_no VARCHAR(20)NOT NULL,
purchase_date DATE NOT NULL,
ambulance_time VARCHAR(30) NOT NULL,
ambulance_model VARCHAR(20)NOT NULL,
status VARCHAR(20) NOT NULL,
ambulance_status VARCHAR(20) NOT NULL,
staff_id NUMBER(15) CONSTRAINT a_fk REFERENCES staff_details(staff_id),
CONSTRAINT t_s PRIMARY KEY(ambulance_id));

================================================================================
create table bed_details(
bed_id NUMBER(10)NOT NULL,
bed_type VARCHAR(10)NOT NULL,
bed_bookedTime VARCHAR(30) NOT NULL,
bed_status VARCHAR(10)NOT NULL,
bed_size VARCHAR(20)NOT NULL,
room_id NUMBER(15) CONSTRAINT a_ft REFERENCES room_details(room_id),
CONSTRAINT t_ks PRIMARY KEY(bed_id));
================================================================================
create table bookingCancellation_details(
bc_id NUMBER(10)NOT NULL,
booking_date DATE ,
fromdate DATE ,
todate DATE ,
booked_time VARCHAR(30) NOT NULL,
resource_type VARCHAR(10) NOT NULL,
resource_id VARCHAR(20) NOT NULL,
status VARCHAR(10) NOT NULL,
bed_id Number(10) CONSTRAINT t_sf REFERENCES bed_details(bed_id),
staff_id NUMBER(10) CONSTRAINT t_sd REFERENCES staff_details(staff_id),
theatre_id NUMBER(10) CONSTRAINT t_ff REFERENCES operationTheatre_details(theatre_id),
CONSTRAINT m_s PRIMARY KEY(bc_id));
================================================================================
create sequence staff_id_ref start with 100 increment by 1;

create sequence room_id_ref start with 200 increment by 1;

create sequence operation_id_ref start with 300 increment by 1;

create sequence doctorvisit_id_ref start with 1 increment by 1;

create sequence beddetails_id_ref start with 400 increment by 1;

create sequence bookcancel_id_ref start with 1100 increment by 1;

create sequence ambulance_id_ref start with 500 increment by 1;

================================================================================