use student_registration;
-- The subquery below is problematic because the Section table does not have a column StudentID
-- but no error is issued because the Student table in the OUTER query DOES have a column named StudentID
SELECT * FROM Student WHERE StudentID NOT IN (SELECT StudentID FROM Section WHERE Semester='II-2015');

-- This clearly demonstrates that the Section table does NOT have a column named StudentID
-- SELECT StudentID FROM Section WHERE Semester='II-2015';

-- This is a BETTER way to write the subquery so we avoid accidental mistakes like the one above.
-- SELECT * FROM Student WHERE StudentID NOT IN (SELECT Se.StudentID FROM Section Se WHERE Semester='II-2015');