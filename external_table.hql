create external table department_data_external(
    dept_id int,
    dept_name string,
    manager_id int,
    salary int)
row format delimited
fields terminated by ','
location '/tmp/input_data/'