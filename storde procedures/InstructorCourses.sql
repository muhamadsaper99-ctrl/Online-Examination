alter proc InstructorCourses @Ins_ID int 
as 
	begin try
		Select CONCAT(F_name,' ', Lname) as 'Instructor', Course_Name as 'Course', COUNT(sc.St_SSN) as 'NO. of Students' 
		from Instructor i, Ins_Courses ic, Course c, Stu_courses sc
		where i.Ins_SSN = ic.Ins_ID and ic.Course_ID = c.Course_ID 
		and c.Course_ID = sc.Course_ID
		group by CONCAT(F_name,' ', Lname), Course_Name,i.Ins_SSN
		having i.Ins_SSN = @Ins_ID
	end try
	Begin Catch
		Select 'The Instructor ID Is Not Exist'
	End Catch
go

InstructorCourses @Ins_ID  = 299001311
