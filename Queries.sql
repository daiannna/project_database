-----------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT department.DName FROM department JOIN doctors ON department.head = doctors.name 
WHERE department.ID BETWEEN 23 and 78 
GROUP BY Department.DName; 

-----------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT patient.pname, patient.age FROM patient 
WHERE exists (SELECT dg_name FROM diagnose 
              WHERE diagnose.p_id = patient.p_id AND d_code like 'S%'); 
                   
-----------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT nurse.name, nurse.n_id FROM nurse
WHERE n_id IN (SELECT n_id FROM block 
               WHERE floor != 3 AND b_code <> '%H') 
ORDER BY nurse.name; 

-----------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT count(rNumber) FROM stay WHERE available LIKE 'Yes'; 

-----------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT medicine.Mname, medicine.brand, medicine.Description FROM medicine WHERE Mname = All 
   (SELECT Mname FROM treatment WHERE p_id = 43); 

-----------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT patient.p_id,patient.pname,diagnose.dname FROM patient LEFT JOIN diagnose ON patient.p_id = diagnose.p_id;

-----------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT NAME, Position, SALARY FROM DOCTORs 
WHERE SALARY IN (SELECT SALARY FROM DOCTORS WHERE SALARY < 150 );  

-----------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT patient.p_id, patient.pname FROM patient WHERE age > 45 
UNION 
SELECT medicalrecords.settle, medicalrecords.moveout from medicalrecords; 

-----------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT A.name AS paramedicName1, B.name AS paramedicName2, A.shift 
FROM paramedic A, paramedic B 
WHERE A.paramedic_id <> B.paramedic_id 
AND A.shift = B.shift 
ORDER BY A.salary; 

-----------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT cost.P_ID, cost.oPrice, cost.roomPrice, medicalrecords.settle, medicalrecords.moveout, Sum(oPrice+roomPrice)
FROM Cost JOIN medicalrecords ON cost.P_ID = medicalrecords.P_ID 
WHERE cost.p_id = 50;

-----------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW blockView AS 
SELECT block.n_id as Id, block.b_code,  
FROM block 
JOIN nurse 
ON block.n_id=nurse.n_id; 

-----------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW shiftp AS SELECT name, paramedic_id, shift FROM paramedic WHERE salary > 9000; 

-----------------------------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE ambulanse 
MODIFY carNumber VARCHAR(200), 
MODIFY Model VARCHAR(200). 

-----------------------------------------------------------------------------------------------------------------------------------------------------------

RENAME TABLE diagnose TO diagn; 

-----------------------------------------------------------------------------------------------------------------------------------------------------------

DELETE FROM stay WHERE available LIKE 'Yes' AND rNumber < 10; 

-----------------------------------------------------------------------------------------------------------------------------------------------------------

UPDATE Doctors  
  SET Name = 'Dimitar Dragunov', Position = 'Phychiatry' 
  WHERE dc_id = 123; 
  
-----------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT operation.dc_id, operation.n_id FROM operation 
INNER JOIN doctors ON doctors.dc_id = operation.dc_id 
INNER JOIN nurse ON nurse.n_id = operation.n_id 
WHERE operation.Otype = 'Mild' AND Oroom = 'D341';

-----------------------------------------------------------------------------------------------------------------------------------------------------------
