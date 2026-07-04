create proc ExamQuestionsProc @Ex_ID INT
AS
	begin try
		-- For Display Exam 
	Declare @Cur_Ques int;

		Declare Ques_Cur Cursor
			For Select Ques_ID
				From ExamQuestions
				Where Exam_ID = @Ex_ID;

		Open Ques_Cur;

		Fetch Next From Ques_Cur 
		Into @Cur_Ques;

		While @@FETCH_STATUS = 0 
			Begin 
				Select Concat ('- ',@ex_ID,' - ',Ques_id,' - ',Ques) AS 'Question' 
				From Question
				Where Ques_ID = @Cur_Ques
				Union
				Select Choice
				From Question_Choice
				Where Ques_ID = @Cur_Ques
				
				FETCH NEXT FROM Ques_Cur INTO 
				@Cur_Ques;
			End;

		Close Ques_Cur;
		Deallocate Ques_Cur;
	end try 

	begin catch
		select 'The Exam ID you inserted is Not Exist :) '
	end catch

ExamQuestionsProc @Ex_ID = 2