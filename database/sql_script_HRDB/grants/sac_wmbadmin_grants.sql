-- ==========================================================================================
-- Author:		Klaus Johansen, KLJ
-- Create date: 2021-11-02
-- Description:	Grants sac_wmbadmin (IIB service account) access that allows 
--              swapping prod and staging table - and execute stored procedures to do so. 
-- ==========================================================================================
USE [HRDB]
GO

GRANT ALTER ON Object::dbo.StageEmpEmpl 
  TO [HLUCORP\sac_wmbadmin]

GRANT ALTER ON Object::dbo.EmpEmployment 
  TO [HLUCORP\sac_wmbadmin]

GRANT EXECUTE ON Object::dbo.StageEmpEmplRefresh
  TO [HLUCORP\sac_wmbadmin]

GRANT EXECUTE ON Object::dbo.StageEmpEmplSwap
  TO [HLUCORP\sac_wmbadmin]

