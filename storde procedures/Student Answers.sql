alter procedure StudentAnswers @EX_ID INT, @St_ID INT 
AS 
	BEGIN TRY
		select Ques as Questions, sa.Answer as 'Student Answers'
		from Question q, Student_Answer sa
		where q.Ques_id = sa.Ques_ID
		and Exam_ID = @EX_ID and sa.St_SSN = @St_ID
	END TRY

	BEGIN CATCH
		SELECT '--Incorrect Exam ID OR Student ID--'
	END CATCH
go

StudentAnswers 1, 111098881