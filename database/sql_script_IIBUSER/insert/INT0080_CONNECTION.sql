-- ************************
-- * Author               : Klaus Johansen (KLJ)
-- * History              : 2022-04-06 Table data for oAuth/SAML authentication 
-- * Description          : Contains values needed to login to SF/PP oData interface
-- *                      : 
-- ************************

* Run manually for each environment

*******************************************************************
* Development Environment
*******************************************************************
delete from IIBUSER.INT0080_CONNECTION; 
Insert into IIBUSER.INT0080_CONNECTION (BASEURL,CLIENT_ID,COMPANY_ID,SAML_ASSERTION) values ('https://api12preview.sapsf.eu/','MzE4MWI2NjBhMWU2OWQ0ZWQyOTlhNzViODVlNA','Lundbeck','PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHNhbWwyOkFzc2VydGlvbiBJRD0iNWEwYWU3ZjItMmMzNC00NjczLWI1ZmYtNWNhODQzYzMzNGYwIiBJc3N1ZUluc3RhbnQ9IjIwMjItMDQtMDdUMDk6MDg6NDQuMzEyWiIgVmVyc2lvbj0iMi4wIiB4bWxuczpzYW1sMj0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmFzc2VydGlvbiIgeG1sbnM6eHM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48c2FtbDI6SXNzdWVyPnd3dy5zdWNjZXNzZmFjdG9ycy5jb208L3NhbWwyOklzc3Vlcj48ZHM6U2lnbmF0dXJlIHhtbG5zOmRzPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjIj48ZHM6U2lnbmVkSW5mbz48ZHM6Q2Fub25pY2FsaXphdGlvbk1ldGhvZCBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMTAveG1sLWV4Yy1jMTRuIyIvPjxkczpTaWduYXR1cmVNZXRob2QgQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNyc2Etc2hhMjU2Ii8+PGRzOlJlZmVyZW5jZSBVUkk9IiM1YTBhZTdmMi0yYzM0LTQ2NzMtYjVmZi01Y2E4NDNjMzM0ZjAiPjxkczpUcmFuc2Zvcm1zPjxkczpUcmFuc2Zvcm0gQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjZW52ZWxvcGVkLXNpZ25hdHVyZSIvPjxkczpUcmFuc2Zvcm0gQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzEwL3htbC1leGMtYzE0biMiPjxlYzpJbmNsdXNpdmVOYW1lc3BhY2VzIFByZWZpeExpc3Q9InhzIiB4bWxuczplYz0iaHR0cDovL3d3dy53My5vcmcvMjAwMS8xMC94bWwtZXhjLWMxNG4jIi8+PC9kczpUcmFuc2Zvcm0+PC9kczpUcmFuc2Zvcm1zPjxkczpEaWdlc3RNZXRob2QgQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjc2hhMSIvPjxkczpEaWdlc3RWYWx1ZT4rQitkMHFHWExrRXMvdUI3dDBWSjBnN09ubGM9PC9kczpEaWdlc3RWYWx1ZT48L2RzOlJlZmVyZW5jZT48L2RzOlNpZ25lZEluZm8+PGRzOlNpZ25hdHVyZVZhbHVlPnBtN3lKYlcxekhISmxYOCtGMTJQZkFGSW5LMVN3a3JGRHU5eGNLTC9oQXpJNDlBTUJlWENIbXJGSGw1RFE4VjlNd1A1MFFMdU55cFUzZlJFd0JBR01BVy9pOGJ1TUM2cS9OU1JiQ1Q3cTVJUlZlcXB2T2NVMUhTQ1FTTjBySStEQkVHQ0Uzdk52TnpycnN5bUNYZmptVEwvVEtuM0tBd2JaR1V0REFBbmlVYXNYR2tmSW12dGVMQjJuTlpNdW8vZEQyaHdLanptMFBzZ3Z2VGVFRWhkS1ZkMXY1ZFdFMHpta1E5ZlcyMmltNHpzZllXVmRwcmtiOXpreVZ5eXhoNWxKdzRaYVN2NXFWVk1VMzkvc1FLa29odkc2bk5nN3ZGbkd2eU8vdGZnUUQxN3pUM1ZGMzZUMXFMNU9meEpKa2tWb3VzOGRGTWZwekxySHlGWnlmT3dEUT09PC9kczpTaWduYXR1cmVWYWx1ZT48L2RzOlNpZ25hdHVyZT48c2FtbDI6U3ViamVjdD48c2FtbDI6TmFtZUlEIEZvcm1hdD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6MS4xOm5hbWVpZC1mb3JtYXQ6dW5zcGVjaWZpZWQiPkFQSV9JQzwvc2FtbDI6TmFtZUlEPjxzYW1sMjpTdWJqZWN0Q29uZmlybWF0aW9uIE1ldGhvZD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmNtOmJlYXJlciI+PHNhbWwyOlN1YmplY3RDb25maXJtYXRpb25EYXRhIE5vdE9uT3JBZnRlcj0iMjA0Mi0wNC0wNVQwOTowODo0NC4zMTJaIiBSZWNpcGllbnQ9Imh0dHBzOi8vYXBpMTJwcmV2aWV3LnNhcHNmLmV1L29hdXRoL3Rva2VuIi8+PC9zYW1sMjpTdWJqZWN0Q29uZmlybWF0aW9uPjwvc2FtbDI6U3ViamVjdD48c2FtbDI6Q29uZGl0aW9ucyBOb3RCZWZvcmU9IjIwMjItMDQtMDdUMDg6NTg6NDQuMzEyWiIgTm90T25PckFmdGVyPSIyMDQyLTA0LTA1VDA5OjA4OjQ0LjMxMloiPjxzYW1sMjpBdWRpZW5jZVJlc3RyaWN0aW9uPjxzYW1sMjpBdWRpZW5jZT53d3cuc3VjY2Vzc2ZhY3RvcnMuY29tPC9zYW1sMjpBdWRpZW5jZT48L3NhbWwyOkF1ZGllbmNlUmVzdHJpY3Rpb24+PC9zYW1sMjpDb25kaXRpb25zPjxzYW1sMjpBdXRoblN0YXRlbWVudCBBdXRobkluc3RhbnQ9IjIwMjItMDQtMDdUMDk6MDg6NDQuMzEyWiIgU2Vzc2lvbkluZGV4PSJjOTMwNWVhZi0xNGY2LTQyMTItOTEzNi01NjhmMDg3ZWVmOGIiPjxzYW1sMjpBdXRobkNvbnRleHQ+PHNhbWwyOkF1dGhuQ29udGV4dENsYXNzUmVmPnVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphYzpjbGFzc2VzOlBhc3N3b3JkUHJvdGVjdGVkVHJhbnNwb3J0PC9zYW1sMjpBdXRobkNvbnRleHRDbGFzc1JlZj48L3NhbWwyOkF1dGhuQ29udGV4dD48L3NhbWwyOkF1dGhuU3RhdGVtZW50PjxzYW1sMjpBdHRyaWJ1dGVTdGF0ZW1lbnQ+PHNhbWwyOkF0dHJpYnV0ZSBOYW1lPSJhcGlfa2V5Ij48c2FtbDI6QXR0cmlidXRlVmFsdWUgeHNpOnR5cGU9InhzOnN0cmluZyI+TXpFNE1XSTJOakJoTVdVMk9XUTBaV1F5T1RsaE56VmlPRFZsTkE8L3NhbWwyOkF0dHJpYnV0ZVZhbHVlPjwvc2FtbDI6QXR0cmlidXRlPjwvc2FtbDI6QXR0cmlidXRlU3RhdGVtZW50PjxzYW1sMjpBdHRyaWJ1dGVTdGF0ZW1lbnQ+PHNhbWwyOkF0dHJpYnV0ZSBOYW1lPSJ1c2VfdXNlcm5hbWUiPjxzYW1sMjpBdHRyaWJ1dGVWYWx1ZSB4c2k6dHlwZT0ieHM6c3RyaW5nIj50cnVlPC9zYW1sMjpBdHRyaWJ1dGVWYWx1ZT48L3NhbWwyOkF0dHJpYnV0ZT48L3NhbWwyOkF0dHJpYnV0ZVN0YXRlbWVudD48L3NhbWwyOkFzc2VydGlvbj4=');

*******************************************************************
* Test/QA Environment
*******************************************************************
delete from IIBUSER.INT0080_CONNECTION; 
Insert into IIBUSER.INT0080_CONNECTION (BASEURL,CLIENT_ID,COMPANY_ID,SAML_ASSERTION) values ('https://api012.successfactors.eu/','ZTkwODk0NTk5MTYzZTZjNjlmNDg0NzYzM2ZiZQ','LundbeckTest','PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHNhbWwyOkFzc2VydGlvbiBJRD0iYzc3NDdlYTgtYWU2NS00NzlkLWJmNjAtNjJkZTg0YmRjMmZhIiBJc3N1ZUluc3RhbnQ9IjIwMjItMDQtMDdUMDk6MTE6MDcuNTM2WiIgVmVyc2lvbj0iMi4wIiB4bWxuczpzYW1sMj0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmFzc2VydGlvbiIgeG1sbnM6eHM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48c2FtbDI6SXNzdWVyPnd3dy5zdWNjZXNzZmFjdG9ycy5jb208L3NhbWwyOklzc3Vlcj48ZHM6U2lnbmF0dXJlIHhtbG5zOmRzPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjIj48ZHM6U2lnbmVkSW5mbz48ZHM6Q2Fub25pY2FsaXphdGlvbk1ldGhvZCBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMTAveG1sLWV4Yy1jMTRuIyIvPjxkczpTaWduYXR1cmVNZXRob2QgQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNyc2Etc2hhMjU2Ii8+PGRzOlJlZmVyZW5jZSBVUkk9IiNjNzc0N2VhOC1hZTY1LTQ3OWQtYmY2MC02MmRlODRiZGMyZmEiPjxkczpUcmFuc2Zvcm1zPjxkczpUcmFuc2Zvcm0gQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjZW52ZWxvcGVkLXNpZ25hdHVyZSIvPjxkczpUcmFuc2Zvcm0gQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzEwL3htbC1leGMtYzE0biMiPjxlYzpJbmNsdXNpdmVOYW1lc3BhY2VzIFByZWZpeExpc3Q9InhzIiB4bWxuczplYz0iaHR0cDovL3d3dy53My5vcmcvMjAwMS8xMC94bWwtZXhjLWMxNG4jIi8+PC9kczpUcmFuc2Zvcm0+PC9kczpUcmFuc2Zvcm1zPjxkczpEaWdlc3RNZXRob2QgQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjc2hhMSIvPjxkczpEaWdlc3RWYWx1ZT5TUE15Si92dHdNbGYzcGN0b3dIaEt2aDlYd0E9PC9kczpEaWdlc3RWYWx1ZT48L2RzOlJlZmVyZW5jZT48L2RzOlNpZ25lZEluZm8+PGRzOlNpZ25hdHVyZVZhbHVlPkdwYUtVdytscEVSQUZlSjIyMmp3bnpvUG1JWDJuMkhJNXZIeVhFZVNnVXBvejRFaHdSblNJNmxEdzNweDFsTWF1MEZoRkwvOTJnSDBkRnFTUkdGV0NnSy8yMDBKaUtyZ01hZG5vekhGTkk3UmRDNEdsdWZDUTdIQXptL2Z4L2hEVlJyaUQ0amRvaGlTd2o4OTVvSXFjUVp1TUdsMHIycXhhQkwyYmRnWEQzOG9aeWM4ZDZOKzJmWVJvTDQ0a3lZNzN1YVNtMXErcFpMZnZJTGgweU9xb3paMGRPOXM2UkR4WnkwZ2RuZEUyRFlzVENSVTJpa0xxMThKRVdvcmNBTklaQ2F4SS9xTWhzWDdOcGZBNElYVUYySEhJMnJOR0ZaeHlTYmplR01hQWRJemdMWm5jOU5FMnZLa1dDaEp3UmVucmhWNmpjcUpzbmhrM3dGM0V3RS9YUT09PC9kczpTaWduYXR1cmVWYWx1ZT48L2RzOlNpZ25hdHVyZT48c2FtbDI6U3ViamVjdD48c2FtbDI6TmFtZUlEIEZvcm1hdD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6MS4xOm5hbWVpZC1mb3JtYXQ6dW5zcGVjaWZpZWQiPkFQSV9JQzwvc2FtbDI6TmFtZUlEPjxzYW1sMjpTdWJqZWN0Q29uZmlybWF0aW9uIE1ldGhvZD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmNtOmJlYXJlciI+PHNhbWwyOlN1YmplY3RDb25maXJtYXRpb25EYXRhIE5vdE9uT3JBZnRlcj0iMjA0Mi0wNC0wNVQwOToxMTowNy41MzZaIiBSZWNpcGllbnQ9Imh0dHBzOi8vYXBpMDEyLnN1Y2Nlc3NmYWN0b3JzLmV1L29hdXRoL3Rva2VuIi8+PC9zYW1sMjpTdWJqZWN0Q29uZmlybWF0aW9uPjwvc2FtbDI6U3ViamVjdD48c2FtbDI6Q29uZGl0aW9ucyBOb3RCZWZvcmU9IjIwMjItMDQtMDdUMDk6MDE6MDcuNTM2WiIgTm90T25PckFmdGVyPSIyMDQyLTA0LTA1VDA5OjExOjA3LjUzNloiPjxzYW1sMjpBdWRpZW5jZVJlc3RyaWN0aW9uPjxzYW1sMjpBdWRpZW5jZT53d3cuc3VjY2Vzc2ZhY3RvcnMuY29tPC9zYW1sMjpBdWRpZW5jZT48L3NhbWwyOkF1ZGllbmNlUmVzdHJpY3Rpb24+PC9zYW1sMjpDb25kaXRpb25zPjxzYW1sMjpBdXRoblN0YXRlbWVudCBBdXRobkluc3RhbnQ9IjIwMjItMDQtMDdUMDk6MTE6MDcuNTM2WiIgU2Vzc2lvbkluZGV4PSIzNGYxMWI5OS03ODg0LTQ2NmYtYWNmOC0xMzA1YmY5OTQyMzIiPjxzYW1sMjpBdXRobkNvbnRleHQ+PHNhbWwyOkF1dGhuQ29udGV4dENsYXNzUmVmPnVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphYzpjbGFzc2VzOlBhc3N3b3JkUHJvdGVjdGVkVHJhbnNwb3J0PC9zYW1sMjpBdXRobkNvbnRleHRDbGFzc1JlZj48L3NhbWwyOkF1dGhuQ29udGV4dD48L3NhbWwyOkF1dGhuU3RhdGVtZW50PjxzYW1sMjpBdHRyaWJ1dGVTdGF0ZW1lbnQ+PHNhbWwyOkF0dHJpYnV0ZSBOYW1lPSJhcGlfa2V5Ij48c2FtbDI6QXR0cmlidXRlVmFsdWUgeHNpOnR5cGU9InhzOnN0cmluZyI+WlRrd09EazBOVGs1TVRZelpUWmpOamxtTkRnME56WXpNMlppWlE8L3NhbWwyOkF0dHJpYnV0ZVZhbHVlPjwvc2FtbDI6QXR0cmlidXRlPjwvc2FtbDI6QXR0cmlidXRlU3RhdGVtZW50PjxzYW1sMjpBdHRyaWJ1dGVTdGF0ZW1lbnQ+PHNhbWwyOkF0dHJpYnV0ZSBOYW1lPSJ1c2VfdXNlcm5hbWUiPjxzYW1sMjpBdHRyaWJ1dGVWYWx1ZSB4c2k6dHlwZT0ieHM6c3RyaW5nIj50cnVlPC9zYW1sMjpBdHRyaWJ1dGVWYWx1ZT48L3NhbWwyOkF0dHJpYnV0ZT48L3NhbWwyOkF0dHJpYnV0ZVN0YXRlbWVudD48L3NhbWwyOkFzc2VydGlvbj4=');

*******************************************************************
* Production Environment
*******************************************************************
delete from IIBUSER.INT0080_CONNECTION; 
Insert into IIBUSER.INT0080_CONNECTION (BASEURL,CLIENT_ID,COMPANY_ID,SAML_ASSERTION) values ('https://api012.successfactors.eu/','MzEwNWM3ZTNiZDIzODg5Y2YzOGYzMmYxMjgxZA','Lundbeck','PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHNhbWwyOkFzc2VydGlvbiBJRD0iZmYyYzkxMjktN2JmOS00YTM5LTk5OTktN2E2MDcyNzhkZGZlIiBJc3N1ZUluc3RhbnQ9IjIwMjItMDQtMDdUMDk6MTI6MzcuNzg4WiIgVmVyc2lvbj0iMi4wIiB4bWxuczpzYW1sMj0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmFzc2VydGlvbiIgeG1sbnM6eHM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hIiB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIj48c2FtbDI6SXNzdWVyPnd3dy5zdWNjZXNzZmFjdG9ycy5jb208L3NhbWwyOklzc3Vlcj48ZHM6U2lnbmF0dXJlIHhtbG5zOmRzPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjIj48ZHM6U2lnbmVkSW5mbz48ZHM6Q2Fub25pY2FsaXphdGlvbk1ldGhvZCBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMTAveG1sLWV4Yy1jMTRuIyIvPjxkczpTaWduYXR1cmVNZXRob2QgQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNyc2Etc2hhMjU2Ii8+PGRzOlJlZmVyZW5jZSBVUkk9IiNmZjJjOTEyOS03YmY5LTRhMzktOTk5OS03YTYwNzI3OGRkZmUiPjxkczpUcmFuc2Zvcm1zPjxkczpUcmFuc2Zvcm0gQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjZW52ZWxvcGVkLXNpZ25hdHVyZSIvPjxkczpUcmFuc2Zvcm0gQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzEwL3htbC1leGMtYzE0biMiPjxlYzpJbmNsdXNpdmVOYW1lc3BhY2VzIFByZWZpeExpc3Q9InhzIiB4bWxuczplYz0iaHR0cDovL3d3dy53My5vcmcvMjAwMS8xMC94bWwtZXhjLWMxNG4jIi8+PC9kczpUcmFuc2Zvcm0+PC9kczpUcmFuc2Zvcm1zPjxkczpEaWdlc3RNZXRob2QgQWxnb3JpdGhtPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwLzA5L3htbGRzaWcjc2hhMSIvPjxkczpEaWdlc3RWYWx1ZT4wdTNmNmo2WEkwT2wyMmswYi8xUnd6Rkp2aGs9PC9kczpEaWdlc3RWYWx1ZT48L2RzOlJlZmVyZW5jZT48L2RzOlNpZ25lZEluZm8+PGRzOlNpZ25hdHVyZVZhbHVlPkhkTVNtYzdUMFp6QkxXUks0WE9Ea0pCcHRtWnk2elFBWS9DdFRVMW1JV0VJck5yMyszOStXakgwcjQ5eFJCYXRIeXF0ZUVkMVpzcXRYaGhmRlcyRjRBMk5FNU1ML09pcmV2bElvY3BsWTJ4a3drc2RpUGI3bUt4YkI3OW1pSG1ySlZsNVliWUdvbnRVWlZNUktDbE12ODZIMVljeUk3MTNrMXpIV2VoSlpNK2s1RythdnBORllFWlZSdU4zZWs3SjdUcXRPQmZsTVpTaHFlbVMyY3ltb3A3SVY5cGl2ODlZOUc0UnhBRE9BNlRLMXVFVEkzQ2UzeXhFNGVHU3pWV294VWtQdllWeFg5OXpqRTI0VVhkajhNMkN3MGJRSUFJbEw3UWw3WDJlY1FzTmh5U2RQdnlSWWVvY2h5UFBQV3p4YTdHUVFyL2VZN0I4SDhZa3puLzJMUT09PC9kczpTaWduYXR1cmVWYWx1ZT48L2RzOlNpZ25hdHVyZT48c2FtbDI6U3ViamVjdD48c2FtbDI6TmFtZUlEIEZvcm1hdD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6MS4xOm5hbWVpZC1mb3JtYXQ6dW5zcGVjaWZpZWQiPkFQSV9JQzwvc2FtbDI6TmFtZUlEPjxzYW1sMjpTdWJqZWN0Q29uZmlybWF0aW9uIE1ldGhvZD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmNtOmJlYXJlciI+PHNhbWwyOlN1YmplY3RDb25maXJtYXRpb25EYXRhIE5vdE9uT3JBZnRlcj0iMjA0Mi0wNC0wNVQwOToxMjozNy43ODhaIiBSZWNpcGllbnQ9Imh0dHBzOi8vYXBpMDEyLnN1Y2Nlc3NmYWN0b3JzLmV1L29hdXRoL3Rva2VuIi8+PC9zYW1sMjpTdWJqZWN0Q29uZmlybWF0aW9uPjwvc2FtbDI6U3ViamVjdD48c2FtbDI6Q29uZGl0aW9ucyBOb3RCZWZvcmU9IjIwMjItMDQtMDdUMDk6MDI6MzcuNzg4WiIgTm90T25PckFmdGVyPSIyMDQyLTA0LTA1VDA5OjEyOjM3Ljc4OFoiPjxzYW1sMjpBdWRpZW5jZVJlc3RyaWN0aW9uPjxzYW1sMjpBdWRpZW5jZT53d3cuc3VjY2Vzc2ZhY3RvcnMuY29tPC9zYW1sMjpBdWRpZW5jZT48L3NhbWwyOkF1ZGllbmNlUmVzdHJpY3Rpb24+PC9zYW1sMjpDb25kaXRpb25zPjxzYW1sMjpBdXRoblN0YXRlbWVudCBBdXRobkluc3RhbnQ9IjIwMjItMDQtMDdUMDk6MTI6MzcuNzg4WiIgU2Vzc2lvbkluZGV4PSJlZjZiYjIyYy1mZTY4LTRmMjctYmY5MS1mNWMyNzY4YTBkZWMiPjxzYW1sMjpBdXRobkNvbnRleHQ+PHNhbWwyOkF1dGhuQ29udGV4dENsYXNzUmVmPnVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphYzpjbGFzc2VzOlBhc3N3b3JkUHJvdGVjdGVkVHJhbnNwb3J0PC9zYW1sMjpBdXRobkNvbnRleHRDbGFzc1JlZj48L3NhbWwyOkF1dGhuQ29udGV4dD48L3NhbWwyOkF1dGhuU3RhdGVtZW50PjxzYW1sMjpBdHRyaWJ1dGVTdGF0ZW1lbnQ+PHNhbWwyOkF0dHJpYnV0ZSBOYW1lPSJhcGlfa2V5Ij48c2FtbDI6QXR0cmlidXRlVmFsdWUgeHNpOnR5cGU9InhzOnN0cmluZyI+TXpFd05XTTNaVE5pWkRJek9EZzVZMll6T0dZek1tWXhNamd4WkE8L3NhbWwyOkF0dHJpYnV0ZVZhbHVlPjwvc2FtbDI6QXR0cmlidXRlPjwvc2FtbDI6QXR0cmlidXRlU3RhdGVtZW50PjxzYW1sMjpBdHRyaWJ1dGVTdGF0ZW1lbnQ+PHNhbWwyOkF0dHJpYnV0ZSBOYW1lPSJ1c2VfdXNlcm5hbWUiPjxzYW1sMjpBdHRyaWJ1dGVWYWx1ZSB4c2k6dHlwZT0ieHM6c3RyaW5nIj50cnVlPC9zYW1sMjpBdHRyaWJ1dGVWYWx1ZT48L3NhbWwyOkF0dHJpYnV0ZT48L3NhbWwyOkF0dHJpYnV0ZVN0YXRlbWVudD48L3NhbWwyOkFzc2VydGlvbj4=');


