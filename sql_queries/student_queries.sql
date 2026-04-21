Create database [Tableau Project 1]

use [Tableau Project 1 ]

select * from [dbo].[Depression_Student_Dataset]



Select Gender ,  count(*) from [dbo].[Depression_Student_Dataset]
group by Gender

Update [dbo].[Depression_Student_Dataset]
set Gender = 'F' where Gender = 'Female'


Update [dbo].[Depression_Student_Dataset]
set Gender = 'M' where Gender = 'Male'



Select * from [dbo].[Depression_Student_Dataset]
Where Gender is null


Select * from [dbo].[Depression_Student_Dataset]
Where Gender = ''


select age , count(*) from [dbo].[Depression_Student_Dataset]
group by age
order by age desc

alter table [dbo].[Depression_Student_Dataset]
add Age_Group varchar(max)

select * from [dbo].[Depression_Student_Dataset]

update [dbo].[Depression_Student_Dataset]
set Age_Group =
case when Age between  18 and 24 then 'A1'
else case when age between 25 and 30 then 'A2'
else 'A3' end end 

select age_group , count(*) from [dbo].[Depression_Student_Dataset]
group by age_group



select * from [Depression_Student_Dataset]

alter table [Depression_Student_Dataset]
add Index_Column int identity(1,1)

update [dbo].[Depression_Student_Dataset]
set Depression = 'No' where Depression = '0'

select * from INFORMATION_SCHEMA.columns where TABLE_NAME LIKE
'Depression_Student_Dataset'

ALTER TABLE [Depression_Student_Dataset]
ALTER COLUMN DEPRESSION VARCHAR(MAX)


UPDATE [Depression_Student_Dataset]
set Depression = 'Yes' where Depression = '1'

select Depression,count(*) from [Depression_Student_Dataset] group by Depression



select * from INFORMATION_SCHEMA.columns where TABLE_NAME
like 'Depression_Student_Dataset'

select Academic_Pressure , count(*) from [dbo].Depression_Student_Dataset
group by Academic_Pressure

select Study_Satisfaction, count(*) from [dbo].Depression_Student_Dataset
group by Study_Satisfaction

select Sleep_Duration, count(*) from [dbo].Depression_Student_Dataset
group by Sleep_Duration

select Dietary_Habits, count(*) from [dbo].Depression_Student_Dataset
group by Dietary_Habits

select Have_you_ever_had_suicidal_thoughts, count(*) from [dbo].Depression_Student_Dataset
group by Have_you_ever_had_suicidal_thoughts

select Study_Hours, count(*) from [dbo].Depression_Student_Dataset
group by Study_Hours

select Financial_Stress, count(*) from [dbo].Depression_Student_Dataset
group by Financial_Stress

select Family_History_of_Mental_Illness, count(*) from [dbo].Depression_Student_Dataset
group by Family_History_of_Mental_Illness

select Depression, count(*) from [dbo].Depression_Student_Dataset
group by Depression

select Age_Group, count(*) from [dbo].Depression_Student_Dataset
group by Age_Group





