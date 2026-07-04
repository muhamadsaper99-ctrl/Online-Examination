create proc StudentGrades @St_ID INT
as
	begin try
		Select Concat (Fname,' ',Lname) As 'Student', Course_Name As 'Course',Concat (SUM(SA.Grade),' / 20') As 'Grade',
		concat((SUM(SA.Grade)*100)/20,' %') as 'Precentage'
		from student s, Course c, Student_Answer sa, Exam e
		where s.St_SSN = sa.St_SSN
		and sa.St_SSN = s.St_SSN and e.Exam_ID = sa.Exam_ID
		and e.Course_ID = c.Course_ID and s.St_SSN = 111098881
		Group By  Concat (Fname,' ',Lname) ,Course_Name
	end try

	begin catch
		select '---Wrong Student ID---'
	end catch

StudentGrades @St_ID= 111098881



