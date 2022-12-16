------------------------------------------------------------------------------------------------------------

CREATE TRIGGER del_sal 
AFTER DELETE ON paramedic 
FOR EACH ROW 
UPDATE driver set salary=salary+old.salary 
WHERE driver.salary=4;

------------------------------------------------------------------------------------------------------------

CREATE TRIGGER up_mname 
AFTER UPDATE ON medicine 
FOR EACH ROW 
UPDATE treatment SET Mname = new.Mname 
WHERE Mname ='II';

------------------------------------------------------------------------------------------------------------

CREATE TRIGGER ins_doc
AFTER INSERT ON doctors 
FOR EACH ROW
INSERT INTO department(d_id,Dname,Head) VALUES (102,'Cardiology',new.name);

------------------------------------------------------------------------------------------------------------
