use geeks4geeks;
#table create
CREATE TABLE old_table (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO old_table (id, name) VALUES (1, 'John'), (2, 'Alice');
ALTER TABLE old_table RENAME TO new_table;


drop table new_table;


CREATE TABLE A(
  ID INT PRIMARY KEY,
  Name VARCHAR(20)
  );
  
  CREATE TABLE B(
  ID INT PRIMARY KEY,
  Name VARCHAR(20)
  );
  
  DROP TABLE IF EXISTS a, b;
  
  #TEMPORARY table
  CREATE TEMPORARY TABLE StudentDetailsTemp(
  id int PRIMARY KEY, 
  name varchar(255),
  gender char(1),
  age int
);
  
DESC StudentDetailsTemp;
#insert
INSERT INTO StudentDetailsTemp(id, name, age, gender) VALUES(1, 'Rachel', 23, 'F');
INSERT INTO StudentDetailsTemp(id, name, age, gender) VALUES(2, 'Monica', 28, 'F');
INSERT INTO StudentDetailsTemp(id, name, age, gender) VALUES(3, 'Phoebe', 26, 'F');

SELECT * FROM StudentDetailsTemp;
DROP TEMPORARY TABLE StudentDetailsTemp;



  
  
