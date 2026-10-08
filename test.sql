USE CollegeDB;

-- Check Department table
SELECT 'Checking Department table...' AS Message;

DESCRIBE Department;

-- Check columns
SELECT
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Department'
ORDER BY ORDINAL_POSITION;

-- Check Primary Key
SELECT
    COLUMN_NAME,
    CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Department'
AND CONSTRAINT_NAME = 'PRIMARY';

-- Insert test record
INSERT INTO Department
(DepartmentID, DepartmentName, HOD)
VALUES
(101, 'Computer Science', 'Dr. Kumar');

-- Display result
SELECT * FROM Department;

SELECT 'AUTOGRADING TEST COMPLETED' AS Result;
