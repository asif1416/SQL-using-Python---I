-- Create the STUDENT table
CREATE TABLE IF NOT EXISTS STUDENT (
  ROLL_NO TEXT PRIMARY KEY,
  NAME TEXT NOT NULL,
  ADDRESS TEXT,
  PHONE TEXT,
  AGE INTEGER
);

-- Insert sample data
INSERT INTO STUDENT (ROLL_NO, NAME, ADDRESS, PHONE, AGE) VALUES
  ('1', 'RAM', 'DELHI', '*****', 18),
  ('2', 'RAMESH', 'GURGAON', '*****', 18),
  ('3', 'SUJIT', 'ROHTAK', '*****', 20),
  ('4', 'SURESH', 'DELHI', '*****', 18),
  ('5', 'AMAN', 'ROHTAK', '*****', 20),
  ('6', 'HARSH', 'GURGAON', '*****', 18);

-- Queries
SELECT * FROM STUDENT; 
SELECT * FROM STUDENT WHERE AGE = 18 AND ADDRESS = 'DELHI';
SELECT * FROM STUDENT WHERE AGE = 18 AND NAME = 'RAM'; 
SELECT * FROM STUDENT WHERE NAME = 'RAM' OR NAME = 'SUJIT'; 
SELECT * FROM STUDENT WHERE NAME = 'RAM' OR AGE = 20; 
SELECT * FROM STUDENT WHERE AGE = 18 AND (NAME = 'RAM' OR NAME = 'RAMESH'); H