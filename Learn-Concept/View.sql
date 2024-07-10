CREATE VIEW IITHyderabadStudentsView AS
SELECT sid, sname, age 
FROM StudentDetails
WHERE university = "IIT Hyderabad";

SELECT * FROM IITHyderabadStudentsView;

#update
CREATE OR REPLACE VIEW IITHyderabadStudentsView AS
SELECT sname, age 
FROM StudentDetails
WHERE university = "IIT Hyderabad";

DELETE FROM IITHyderabadStudentsView WHERE sname = "Tenali Rama";
DROP VIEW PythonEnrolledView;
