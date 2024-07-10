use gfg;
create TABLE geeksforgeeks(
  id varchar(100) PRIMARY KEY,
  name varchar(100),
  monthly_score int,
  contest_rank int,
  courses_enrolled int
);

INSERT INTO geeksforgeeks(id, name, monthly_score, contest_rank, courses_enrolled)
VALUES('vish3001', 'Vishu', 50, 1, 10);

INSERT INTO geeksforgeeks(id, name, monthly_score, contest_rank, courses_enrolled)
VALUES('Aayush05', 'Aayush', 48, 2, 8);

INSERT INTO geeksforgeeks(id, name, monthly_score, contest_rank, courses_enrolled)
VALUES('Neeraj50', 'Neeraj', 46, 3, 6);

INSERT INTO geeksforgeeks(id, name, monthly_score, contest_rank, courses_enrolled)
VALUES('Sumit65', 'Sumit', 45, 4, 5);

INSERT INTO geeksforgeeks(id, name, monthly_score, contest_rank, courses_enrolled)
VALUES('Harsh45', 'Harsh', 42, 5, 7);

SELECT * FROM geeksforgeeks;

UPDATE geeksforgeeks
SET contest_rank = 55, courses_enrolled = 15
WHERE id = 'sumit65';

SELECT * FROM geeksforgeeks;


UPDATE geeksforgeeks
SET monthly_score = monthly_score + 1;

SELECT * FROM geeksforgeeks;