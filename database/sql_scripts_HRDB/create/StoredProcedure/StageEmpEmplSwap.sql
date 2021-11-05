USE [HRDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Author:		Klaus Johansen, KLJ
-- Create date: 2021-11-02
-- Description:	Swap staging table 'StageEmpEmpl' with prod table 'EmpEmployment'.
--              Done only if StageEmpEmpl has same or more rows than EmpEmployment (can only grown in size). 
--				Truncates staging table afterwards to avoid potential "misuse". 
-- ==========================================================================================
CREATE OR ALTER     PROCEDURE [dbo].[StageEmpEmplSwap]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRAN;  

	-- Ensure staging table has run (must have at least same or higher number of records than EmpEmployment)
	IF( (select count(*) from dbo.StageEmpEmpl) < (select count(*) from dbo.EmpEmployment) )
	BEGIN
	  RAISERROR('StageEmpEmpl not ready for swap',16,10);
	  rollback;
	  return 16; 
	END;

	EXEC sp_rename EmpEmployment, EmpEmploymentSwapTemp;
	EXEC sp_rename StageEmpEmpl, EmpEmployment;
	EXEC sp_rename EmpEmploymentSwapTemp, StageEmpEmpl;

	-- Don't leave data in staging table for anyone to misuse 
	truncate table StageEmpEmpl; 

	COMMIT; 

	RETURN 0; 
END
GO


