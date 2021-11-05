USE [HRDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- ==========================================================================================
-- Author:		Klaus Johansen, KLJ
-- Create date: 2021-11-02
-- Description:	Truncates staging table for any left overs from fauly replication cycle. 
--              Make copy of EmpEmployment to staging table (StageEmpEmpl).
--              identity_insert to reuse rowIds. 
-- ==========================================================================================
CREATE OR ALTER      PROCEDURE [dbo].[StageEmpEmplRefresh]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRAN;  

	-- Let's truncate table just in case last sync ended in error and left data in table. 	
	truncate table StageEmpEmpl; 

	-- Allow override of rowId 
	SET identity_insert [dbo].[StageEmpEmpl] on; 

	insert into [dbo].[StageEmpEmpl] (
			[rowId]
		   ,[userId]
           ,[personIdExternal]
           ,[initials]
           ,[firstName]
           ,[lastName]
           ,[positionId]
           ,[positionName]
           ,[companyCode]
           ,[locationId]
           ,[costCenterId]
           ,[seniorityDate]
           ,[originalStartDate]
           ,[recruitDate]
           ,[positionEntryDate]
           ,[dateOfContractTermination]
           ,[lastDateWorked]
           ,[employeeClass]
           ,[employeeSubClass]
           ,[employmentType]
           ,[employmentStatus]
           ,[isManager]
           ,[standardHours]
           ,[workingDaysPerWeek]
           ,[fullTimeEquivalent]
           ,[orgUnitId]
           ,[businessUnit]
           ,[division]
           ,[department]
           ,[orgUnitLevel1]
           ,[orgUnitLevel2]
           ,[orgUnitLevel3]
           ,[orgUnitLevel4]
           ,[orgUnitLevel5]
           ,[orgUnitLevel6]
           ,[businessEmail]
           ,[businessMobileCountryCode]
           ,[businessMobilePhoneNumber]
           ,[businessLandlineCountryCode]
           ,[businessLandlinePhoneNumber]
           ,[buildingNumber]
           ,[roomNumber]
           ,[managerUserId]
           ,[contingentWorkerAdminPositionId]
           ,[parentPositionId]
           ,[event]
           ,[eventReason]
           ,[eventDate]
           ,[recordFromDate]
           ,[recordToDate]
           ,[lastSyncDate])

Select [rowId],
	[userId]
           ,[personIdExternal]
           ,[initials]
           ,[firstName]
           ,[lastName]
           ,[positionId]
           ,[positionName]
           ,[companyCode]
           ,[locationId]
           ,[costCenterId]
           ,[seniorityDate]
           ,[originalStartDate]
           ,[recruitDate]
           ,[positionEntryDate]
           ,[dateOfContractTermination]
           ,[lastDateWorked]
           ,[employeeClass]
           ,[employeeSubClass]
           ,[employmentType]
           ,[employmentStatus]
           ,[isManager]
           ,[standardHours]
           ,[workingDaysPerWeek]
           ,[fullTimeEquivalent]
           ,[orgUnitId]
           ,[businessUnit]
           ,[division]
           ,[department]
           ,[orgUnitLevel1]
           ,[orgUnitLevel2]
           ,[orgUnitLevel3]
           ,[orgUnitLevel4]
           ,[orgUnitLevel5]
           ,[orgUnitLevel6]
           ,[businessEmail]
           ,[businessMobileCountryCode]
           ,[businessMobilePhoneNumber]
           ,[businessLandlineCountryCode]
           ,[businessLandlinePhoneNumber]
           ,[buildingNumber]
           ,[roomNumber]
           ,[managerUserId]
           ,[contingentWorkerAdminPositionId]
           ,[parentPositionId]
           ,[event]
           ,[eventReason]
           ,[eventDate]
           ,[recordFromDate]
           ,[recordToDate]
           ,[lastSyncDate]

		   from [dbo].[EmpEmployment]; 

		   SET identity_insert [dbo].[StageEmpEmpl] off; 

	COMMIT; 
	RETURN 0; 
END
GO


