use student_registration;
-- Do you see a problem with this query?  Review the columns in the Section table from the schema on the left
SELECT * FROM Student WHERE StudentID NOT IN (SELECT StudentID FROM Section WHERE Semester='II-2015');

-- This query (which looks like the subquery above) clearly fails.  So WHY does the query above return a result?
-- SELECT StudentID FROM Section WHERE Semester='II-2015';

-- SELECT * FROM Student WHERE StudentID NOT IN (SELECT Se.StudentID FROM Section Se WHERE Semester='II-2015');