create database Mycompany
create schema myschema1

create table regions(
region_id int primary key,
region_name varchar(30)
)

create table countries(
country_id char(2) primary key,
country_name varchar(30),
region_id int 

 foreign key (region_id) references regions (region_id)
)

create table location(
location_id int primary key,
street_address varchar(30),
postal_code varchar(15),
city varchar(20),
state_province varchar(10),
country_id char(2),
  foreign key (country_id) references countries (country_id)
)

create table deparment(

department_id int primary key,
department_name varchar(30),
manager_id int,
location_id int,

  foreign key (location_id) references location (location_id)

)
create table jobs(

job_id int primary key,
job_title varchar(30),
min_salary int,
max_salary int,
end_date date,
)
create table job_history(

employee_id int primary key,
start_date date,
end_date date,
job_id int,
department_id int,
  foreign key (department_id) references deparment (department_id),
    foreign key (job_id) references jobs (job_id)

)

create table emplyees(
employee_id int,
first_name varchar(30),
last_name varchar(30),
email varchar,
phone_number varchar(15),
hire_date,
job_id int,
salary int,
commision_pct int,
manager_id int,
department_id int

    foreign key (job_id) references jobs (job_id)

)

