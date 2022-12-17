# project_database
# 18 - P
# Batyrkhan Daiana 210103101
# Amantay Merey 210103126


# Hospital

# Introduction and database description.
Any organization needs timely access to information. The value of information in the modern world is very high. The role of information managers in the modern world is most often performed by databases. Databases provide reliable storage of information, structured form and timely access to it. During the course project, it is necessary to develop an information database for the hospital that will help any user easily find the necessary information about any employee or patient. 


# What functions should the system perform?
A hospital is such an organization that works with a very large amount of information, both about employees and about patients. Doctors always follow the data on their patients, on the course of treatment of patients. And management and accounting need to be aware of events about their employees. To do this, you need a common database that includes all the necessary information. Our system is designed to keep order in the hospital and to improve the health of the patient by managing database.


# Who will use it?
 • Doctors <br>
 • Nurses <br>
 • Patients <br>

# How will data obsolescence be handled?
Every ten years, the hospital database is sent for storage to the System Archive, thereby outdated information frees up additional space for further processing.


# Where did you get the idea for this project? 
Sympathetic to the situation of hospitals in our country, we decided to consider this topic. 


# ER diagram
<img width="1311" alt="hospital" src="https://user-images.githubusercontent.com/120556897/208241161-02ebedf3-c899-4577-b9e8-ce8faf16eb05.png">



# Relational Schema

<!-- •	Department (ID, Dname, Head) <br>
•	Doctor (ID, Name, Position, Salary) <br>
•	Nurse (ID, Name, Position, Salary) <br>
•	Patient (P_ID, Name, Age, Phone, Address) <br>
•	MedicalRecords (P_ID, D_ID, Service, Settled, MoveOut) <br> 
•	Room (R_code, Number, Floor) <br>
•	Block (B_code, N_ID, Floor) <br>
•	Stay (P_ID, Rnumber, Available) <br>
•	Cost (P_ID, D_ID, roomPrice, oPrice) <br>
•	Operation (P_ID, D_ID, N_ID, Oname, Otype, Oroom) <br>
•	Diagnose (P_ID, D_code, DiagnoseName) <br>
•	Ambulans (P_ID, carNumber, Model) <br>
•	Driver (Driver_ID, Name, Phone, Salary) <br>
•	Paramedic (Paramedic_ID, Name, Phone, Salary, Shift) <br>
•	Treatment (P_ID, D_ID, D_code, Mname, Oname) <br>
•	Medicine (Mname, Brand, Description) <br> -->

<img width="561" alt="relationalSchema" src="https://user-images.githubusercontent.com/120556897/208241199-aa794984-6702-4f04-ab9c-7cf476b72e3c.png">


# FDs

1. Department <br>
  ID -> {DName, Head}

2. Doctor <br>
  ID -> {Name, Position, Salary}

3. Nurse <br>
  ID -> {Name, Position, Salary}

4. Patient <br>
  ID -> {Name, Address, Phone, Age}

5. Diagnose <br>
  D_Code -> {D_Name} 

6. Block <br>
  B_Code -> {Floor, N_ID}

7. Room <br>
  B_Code -> {Floor}

8. Ambulance <br>
  Car_Number -> {Model} 

9. Driver <br>
  ID -> {Name, Phone, Salary, Shift} 

10. Paramedic  
   Paramedic_ID -> {Name, Position, Salary, Shift}

11. Treatment  
   P_ID -> {D_ID, D_code, Mname, Oname}

12. Operation <br>
   P_ID -> {D_ID, N_ID, Oroom, Otype, Oname}  

13. Stay <br>
   P_ID -> {Rnumber, Available} 

14. Cost <br>
   P_ID -> {D_ID, oPrice, roomPrice}

15. Medicine <br>
   Mname -> {Description}

16. Medical Records   
   P_ID -> {D_ID, Service, Settled} 
    











