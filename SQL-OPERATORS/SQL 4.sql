-- Create the STUDENT table (if it does not exist)
CREATE TABLE IF NOT EXISTS STUDENT (
  ROLL_NO TEXT PRIMARY KEY,
  NAME TEXT NOT NULL,
  ADDRESS TEXT,
  PHONE TEXT,
  AGE INTEGER
);

-- Safely clear existing data in the STUDENT table
DELETE FROM STUDENT;

-- Insert sample data into the STUDENT table
INSERT OR IGNORE INTO STUDENT (ROLL_NO, NAME, ADDRESS, PHONE, AGE) VALUES
  ('1', 'RAM', 'DELHI', '*****', 18),
  ('2', 'RAMESH', 'GURGAON', '*****', 18),
  ('3', 'SUJIT', 'ROHTAK', '*****', 20),
  ('4', 'SURESH', 'DELHI', '*****', 18),
  ('5', 'AMAN', 'ROHTAK', '*****', 20),
  ('6', 'HARSH', 'GURGAON', '*****', 18);

-- Queries
SELECT * FROM STUDENT; -- Retrieve all students
SELECT * FROM STUDENT WHERE AGE = 18 AND ADDRESS = 'DELHI'; -- Students aged 18 and from Delhi
SELECT * FROM STUDENT WHERE AGE = 18 AND NAME = 'RAM'; -- Students aged 18 and named RAM
SELECT * FROM STUDENT WHERE NAME = 'RAM' OR NAME = 'SUJIT'; -- Students named RAM or SUJIT
SELECT * FROM STUDENT WHERE NAME = 'RAM' OR AGE = 20; -- Students named RAM or aged 20
SELECT * FROM STUDENT WHERE AGE = 18 AND (NAME = 'RAM' OR NAME = 'RAMESH'); -- Students aged 18 and named RAM or RAMESH
