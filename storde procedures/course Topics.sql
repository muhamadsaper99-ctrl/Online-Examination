ALTER proc CourseTopics @C_ID INT
as
	BEGIN TRY
		select c.Course_Name as 'Course', Topic_Name as Topics 
		from Course c, Topic t
		where c.Course_ID = t.Course_ID
		and c.Course_ID = @C_ID
	END TRY

	BEGIN CATCH
		SELECT 'The Course ID You Insert is Not Exist :) '
	END CATCH
go
CourseTopics @C_ID = 2