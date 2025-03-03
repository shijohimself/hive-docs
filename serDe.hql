create table csv_table
(name string,location string)
row format serde 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with serdeproperties
( 'seperatorChar' = ',',
  'quoteChar' = '\"',
  'escapeChar' = '\\' )
stored as textfile
tblproperties ("skip.header.line.count" = "1");

create table json_table
( name string, id int , skills array<string> )
row format serde 'org.apache.hadoop.hive.serde2.JsonSerDe'
stored as textfile;