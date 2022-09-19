DROP TABLE IF EXISTS Visit;
DROP TABLE IF EXISTS Dog;

CREATE TABLE Dog(
  dog_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  breed VARCHAR(20) NOT NULL,
  name varchar(20) NOT NULL,
  weight INT NOT NULL
  );
  
INSERT INTO Dog
(breed, name, weight)
VALUES('Doberman', 'Zeus', '45'),
('Husky', 'Titan', '69'),
('Shiba Inu', 'Tater', '37'),
('Wolf Mix', 'Angel', '88'),
('Mut', 'Oreo', '65'),
('Fox Terrier', 'Jack', '77');

DESCRIBE Dog;

SELECT * FROM Dog;

CREATE TABLE Visit(
  visit_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dog_id INT,
  Visit_Date DATE,
  Visit_Time TIME,
  
  FOREIGN KEY (dog_id) REFERENCES Dog(dog_id)
);

INSERT INTO Visit
(dog_id, Visit_Date, Visit_Time)
VALUES('1','20210214', '021422'),
('2','20210214', '021422'),
('3','20210219', '012546'),
('4','20210411', '054601'),
('5','20210801', '101404'),
('6','20211014', '075559'),
('1','20211020', '222222'),
('2','20211121', '171949'),
('3','20211225', '233201');

DESCRIBE Visit;

SELECT * FROM Visit;

ALTER TABLE Visit ADD VetBill int NOT NULL;

UPDATE Visit
SET VetBill = 199
WHERE Visit_Date >= 20210411;

SELECT * FROM Visit;



