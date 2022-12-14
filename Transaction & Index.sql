----------------------------------------------------------------------------------------------------------------------------------------------------------------------

START TRANSACTION; 
UPDATE cost set roomPrice=roomPrice-100 where p_id=14; 
UPDATE cost set oPrice=oPrice+50 where p_id=14; 
ROLLBACK;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------

START TRANSACTION ; 
INSERT into medicine (Mname,brand,description) VALUES ('Aspirin','Nobal','Headache'); 
COMMIT;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------

create INDEX operate on operation(Oname,Oroom);

----------------------------------------------------------------------------------------------------------------------------------------------------------------------

create INDEX time on medicalrecords(p_id,settle,moveout);

----------------------------------------------------------------------------------------------------------------------------------------------------------------------

create INDEX cars on ambulanse(carNumber,model);

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
