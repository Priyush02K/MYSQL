CREATE TABLE float01001
(  
user_id int NOT NULL AUTO_INCREMENT,
float_val float,
PRIMARY KEY(user_id)
);
INSERT float01001(float_val)  
VALUES (1.9);

INSERT float01001(float_val)  
VALUES (1.1);

INSERT float01001(float_val)  
VALUES (3.9);

INSERT float01001(float_val)  
VALUES (5.0);

INSERT float01001(float_val)  
VALUES (10.9);

SELECT float_val,
CASE
    WHEN float_val > 5 THEN "The value is greater than 5"
    WHEN float_val = 5 THEN "The value is 5"
    ELSE "The value is under 5"
END as float_txt
FROM float01001;

SELECT float_val,
CASE
    WHEN LENGTH(float_val) > 4 THEN "The length is greater than 4"
    WHEN LENGTH(float_val) = 4 THEN "The length is 4"
    ELSE "The length is less than 4"
END as float_txt
FROM float01001;