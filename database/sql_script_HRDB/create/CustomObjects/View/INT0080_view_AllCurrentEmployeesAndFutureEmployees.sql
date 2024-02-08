USE [HRDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =======================================================================================================================================
-- Author			: Jimmy Lindau (JIMA)
-- Create date		: 20240126
-- Description		: Gets all valid employees and future employees in one select
--					: Note! This view should only be used to manually query employees and not used by any integration solutions.
-- =======================================================================================================================================

CREATE OR ALTER   VIEW [dbo].[INT0080_view_AllCurrentEmployeesAndFutureEmployees]
AS
-- Get employees that have been hired before (exists in table EmpEmployment as terminated)
SELECT 'EmpEmploymentFuture' AS _tableName
	  ,'Future rehire - Exist in table EmpEmployment as Terminated' AS _info
      ,A.userId
      ,A.personIdExternal
      ,A.initials
      ,A.firstName
      ,A.lastName
      ,A.positionId
      ,A.positionName
      ,A.companyCode
      ,A.locationId
      ,A.costCenterId
      ,A.seniorityDate
      ,A.originalStartDate
      ,A.recruitDate
      ,A.positionEntryDate
      ,A.dateOfContractTermination
      ,A.lastDateWorked
      ,A.payGrade
      ,A.jobLevel
      ,A.employeeClass
      ,A.employeeSubClass
      ,A.employeeType
      ,A.employmentType
      ,A.employmentStatus
      ,A.isManager
      ,A.standardHours
      ,A.workingDaysPerWeek
      ,A.fullTimeEquivalent
      ,A.orgUnitId
      ,A.businessUnit
      ,A.division
      ,A.department
      ,A.orgUnitLevel1
      ,A.orgUnitLevel2
      ,A.orgUnitLevel3
      ,A.orgUnitLevel4
      ,A.orgUnitLevel5
      ,A.orgUnitLevel6
      ,A.businessEmail
      ,A.businessMobileCountryCode
      ,A.businessMobilePhoneNumber
      ,A.businessLandlineCountryCode
      ,A.businessLandlinePhoneNumber
      ,A.buildingNumber
      ,A.roomNumber
      ,A.managerUserId
      ,A.contingentWorkerAdminPositionId
      ,A.parentPositionId
      ,A.event
      ,A.eventReason
      ,A.eventDate
      ,A.recordFromDate
      ,A.recordToDate
      ,A.lastSyncDate
FROM [HRDB].[dbo].[EmpEmploymentFuture] A
LEFT JOIN [HRDB].[dbo].[EmpEmployment] B ON A.personIdExternal = B.personIdExternal
WHERE A.recordToDate IS NULL 
AND B.recordToDate IS NULL
AND B.employmentStatus = 'Terminated'
UNION ALL 
-- Get new employees not hired before (not exist in table EmpEmployment)
SELECT 'EmpEmploymentFuture' AS _tableName
	  ,'Future new hire - Does not exist in table EmpEmployment' AS _info
      ,A.userId
      ,A.personIdExternal
      ,A.initials
      ,A.firstName
      ,A.lastName
      ,A.positionId
      ,A.positionName
      ,A.companyCode
      ,A.locationId
      ,A.costCenterId
      ,A.seniorityDate
      ,A.originalStartDate
      ,A.recruitDate
      ,A.positionEntryDate
      ,A.dateOfContractTermination
      ,A.lastDateWorked
      ,A.payGrade
      ,A.jobLevel
      ,A.employeeClass
      ,A.employeeSubClass
      ,A.employeeType
      ,A.employmentType
      ,A.employmentStatus
      ,A.isManager
      ,A.standardHours
      ,A.workingDaysPerWeek
      ,A.fullTimeEquivalent
      ,A.orgUnitId
      ,A.businessUnit
      ,A.division
      ,A.department
      ,A.orgUnitLevel1
      ,A.orgUnitLevel2
      ,A.orgUnitLevel3
      ,A.orgUnitLevel4
      ,A.orgUnitLevel5
      ,A.orgUnitLevel6
      ,A.businessEmail
      ,A.businessMobileCountryCode
      ,A.businessMobilePhoneNumber
      ,A.businessLandlineCountryCode
      ,A.businessLandlinePhoneNumber
      ,A.buildingNumber
      ,A.roomNumber
      ,A.managerUserId
      ,A.contingentWorkerAdminPositionId
      ,A.parentPositionId
      ,A.event
      ,A.eventReason
      ,A.eventDate
      ,A.recordFromDate
      ,A.recordToDate
      ,A.lastSyncDate
FROM [HRDB].[dbo].[EmpEmploymentFuture] A
LEFT JOIN [HRDB].[dbo].[EmpEmployment] B ON A.personIdExternal = B.personIdExternal
WHERE A.recordToDate IS NULL 
AND B.recordToDate IS NULL
AND B.personIdExternal IS NULL
UNION ALL 
-- Get present employees (All employees that exists in table EmpEmployment and not in table EmpEmploymentFuture)
SELECT 'EmpEmployment' AS _tableName
	  ,'Present - Only exists in table EmpEmployment' AS _info
      ,A.userId
      ,A.personIdExternal
      ,A.initials
      ,A.firstName
      ,A.lastName
      ,A.positionId
      ,A.positionName
      ,A.companyCode
      ,A.locationId
      ,A.costCenterId
      ,A.seniorityDate
      ,A.originalStartDate
      ,A.recruitDate
      ,A.positionEntryDate
      ,A.dateOfContractTermination
      ,A.lastDateWorked
      ,A.payGrade
      ,A.jobLevel
      ,A.employeeClass
      ,A.employeeSubClass
      ,A.employeeType
      ,A.employmentType
      ,A.employmentStatus
      ,A.isManager
      ,A.standardHours
      ,A.workingDaysPerWeek
      ,A.fullTimeEquivalent
      ,A.orgUnitId
      ,A.businessUnit
      ,A.division
      ,A.department
      ,A.orgUnitLevel1
      ,A.orgUnitLevel2
      ,A.orgUnitLevel3
      ,A.orgUnitLevel4
      ,A.orgUnitLevel5
      ,A.orgUnitLevel6
      ,A.businessEmail
      ,A.businessMobileCountryCode
      ,A.businessMobilePhoneNumber
      ,A.businessLandlineCountryCode
      ,A.businessLandlinePhoneNumber
      ,A.buildingNumber
      ,A.roomNumber
      ,A.managerUserId
      ,A.contingentWorkerAdminPositionId
      ,A.parentPositionId
      ,A.event
      ,A.eventReason
      ,A.eventDate
      ,A.recordFromDate
      ,A.recordToDate
      ,A.lastSyncDate
FROM [HRDB].[dbo].[EmpEmployment] A
LEFT JOIN [HRDB].[dbo].[EmpEmploymentFuture] B ON A.personIdExternal = B.personIdExternal
WHERE A.recordToDate IS NULL 
AND B.recordToDate IS NULL
AND B.personIdExternal IS NULL

GO


