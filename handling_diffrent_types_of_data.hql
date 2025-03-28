-- how to store array type of data in hive
create table employee(
    id int,
    name string,
    skills array<string>)
row format delimited
fields terminated by ','
collection items terminated by ':'

load data local inpath 'file:///media/data/array_data.csv' into table employee;

select * from employee;
select id,name,skills[0] as primary_skill from employee;

-- some basic array functions
select id,
name,
size(skills) as size_of_each_array,
array_contains(skills,"HADOOP") as knows_hadoop,
sort_array(skills) as sorted_array
from employee;

-- handling map type of data
create table employee_map_data(
    id int,
    name string,
    details map<string,string>)
row format delimited
fields terminated by ','
collection items terminated by '|'
map keys terminated by ':';

-- functions 
select id,
name,
details,
size(details) as size_of_each_map,
map_keys(details) as distinct_map_keys,
map_values(details) as distinct_map_values
from employee_map_data;