

CREATE DATABASE Heart;


USE HEART;

select * from [dbo].[Patients];

select * from [dbo].[FactHeartDisease];

CREATE VIEW Patient_Details as
select 
F.PatientID as PID, 
F.DiagnosisID, 
F.TestID, 
F.TreatmentID, 
F.DateID,
P.PatientName, 
P.Gender, 
P.Age, 
P.Ethnicity, 
P.AlcoholUse, 
P.SmokingStatus, 
P.ExerciseFreq, 
F.IsHeartDisease, F.RiskScore, F.CholesterolLevel, F.BMI, F.anaemia, 
F.creatinine_phosphokinase, F.diabetes, F.ejection_fraction, F.high_blood_pressure, 
F.platelets, F.serum_creatinine,F.serum_sodium, F.time as Times, F.DEATH_EVENT
from 
FactHeartDisease as F 
left join Patients as P on F.PatientID = P.PatientID;





