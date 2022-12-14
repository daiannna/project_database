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
End users of our database are doctors, nurses, staff and even patients.


# How will data obsolescence be handled?
Every ten years, the hospital database is sent for storage to the System Archive, thereby outdated information frees up additional space for further processing.


# Where did you get the idea for this project? 
Sympathetic to the situation of hospitals in our country, we decided to consider this topic. 


# ER diagram
<img width="1299" alt="hospital" src="https://user-images.githubusercontent.com/120556897/207567973-c1fd587b-bc28-4c3e-abcd-48773fdbfb84.png">


# Normalization
1) Department (D_ID -> DName, head);
Key,superkey:D_ID

2) Doctor (ID -> Name,Position,Salary);
Key,superkey:D_ID

3) Nurse (ID -> Name,Position,Salary)
Key,superkey:N_ID

4) Patient (ID -> Name,Address,Phone,Age)
Key,superkey:P_ID

5) Diagnose (D_Code -> D_Name , P_ID -> D_Name)
superkey:D_Code, foreign key:P_ID

6) Block (B_Code -> Floor , N_ID)
Key,superkey:B_Code

7) Room (B_Code -> floor,number)
foreign key:B_Code

8) Ambulans (Car_Number ->Model)
Key,superkey:Car_Number. foreign key:P_ID

9) Driver (ID -> Name,Phone,Salary)
Key,superkey:D_ID

10) Paramedic (ID -> Name,Position,Salary,Shift)
Key,superkey:P_ID

11) Treatments:foreign key()

12) Operation:foreign key()

13) Stay:foreign key()

14) Cost:foreign key()

15) Medicine:there are not keys

16) Medical records:foreign key(P_ID)












