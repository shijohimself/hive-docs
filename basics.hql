show databases;

create database hive_db;
use hive_db;

-- creating tables
create table department_data (
    dept_id int,
    dept_name string,
    manager_id int,
    salary int)
row format delimited
fields terminated by ','

-- all the in depth details about the table
describe formatted department_data