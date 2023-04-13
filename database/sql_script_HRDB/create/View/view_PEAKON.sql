CREATE VIEW dbo.view_PEAKON AS
SELECT DISTINCT
	EE.[userId] AS employeeNumber
	, EE.[firstName] AS givenName 
	, EE.[lastName] AS familyName
	, EE.[businessEmail] AS emails
	, MEE.[businessEmail] AS manager
	, CASE 
	  WHEN OU1.[name] IS NOT NULL THEN CONCAT ( OU1.[name], ' (', OU1.[orgUnitId],')' )
	  END AS department
	, CONCAT ( LO.[name], ' (', LO.[locationId],')' ) AS location
	, EE.[seniorityDate] AS seniority
	, EE.[lastDateWorked] AS seperationDate
	, CASE 
	  WHEN EE.[lastDateWorked] IS NOT NULL THEN EE.[eventReason]
	  END AS seperationReason
	, EP.[dateOfBirth] AS dateOfBirth
	, CASE 
	  WHEN EP.[gender] = 'M' THEN 'Male' 
	  WHEN EP.[gender] = 'F' THEN 'Female'
		ELSE 'Other' 
	  END AS gender
	, CO.[name] AS country
	, LO.[companyCode] AS companyCode
	, EE.[employeeClass] AS employeeGroup
	, EE.[employmentType] AS employeeSubgroup
	, EE.[employeeType] AS employeeType
	, EE.[positionName] AS jobTitle
	, EE.[payGrade] AS payGrade
	, EE.[jobLevel] AS jobLevel
	, EE.[employmentStatus] AS status
	, CONCAT ( OU2.[name], ' (', OU2.[orgUnitId],')') AS businessUnit
	, CASE 
      WHEN MEE2.[userId] IS NOT NULL
      THEN 'Manager'
      ELSE 'Employee'
	  END AS managerEmployee
	-- , AS talents
	, CASE 
	  WHEN OU3.[name] IS NOT NULL THEN CONCAT ( OU3.[name], ' (', OU3.[orgUnitId],')')
	  END AS division
FROM [HRDB].[dbo].[EmpEmployment] AS EE
	LEFT JOIN [HRDB].[dbo].[EmpEmployment] AS MEE ON EE.managerUserId = MEE.userId AND MEE.recordToDate IS NULL
	LEFT JOIN [HRDB].[dbo].[EmpEmployment] AS MEE2 ON EE.userid = MEE2.managerUserId AND MEE2.recordToDate IS NULL AND MEE2.employeeClass IN ('Permanent Employee', 'Temporary Employee') AND (MEE2.lastDateWorked is null or MEE2.lastDateWorked > CURRENT_TIMESTAMP )	
	LEFT JOIN [HRDB].[dbo].[EmpPerson] AS EP ON EE.personIdExternal = EP.personIdExternal
	LEFT JOIN [HRDB].[dbo].[OrgUnit] AS OU1 ON EE.department = OU1.orgUnitId
	LEFT JOIN [HRDB].[dbo].[OrgUnit] AS OU2 ON EE.businessUnit = OU2.orgUnitId
	LEFT JOIN [HRDB].[dbo].[OrgUnit] AS OU3 ON EE.division = OU3.orgUnitId
	LEFT JOIN [HRDB].[dbo].[Location] AS LO ON EE.locationId = LO.locationId
	LEFT JOIN [HRDB].[dbo].[Country] AS CO ON SUBSTRING(EE.locationId,1,3) = CO.countryCode
WHERE EE.recordToDate IS NULL
	AND (EE.lastDateWorked is null or EE.lastDateWorked > DATEADD(MONTH, -1 , CURRENT_TIMESTAMP ) )
	AND EE.employeeClass <> 'Non-Employee'