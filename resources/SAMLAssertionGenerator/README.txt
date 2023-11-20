This folder contains the tools and configuration to generate the SAML assertion needed to obtain a oAuth token for authentication with the SF oData interface. 

SAMLAssertionGen-master.zip
 - The offline tool provided by SAP in SAP note 3031657 (https://launchpad.support.sap.com/#/notes/3031657)

SAP_Note_3031657_-_How_to_generate_SAML_assertion_for_SAP_SuccessFactors_API_using_SAP_provided_offline_tool.pdf
  - Print out of the SAP note including guide how to build the tool using Maven
  
SAMLAssertionGen-1.0.0.jar
  - The offline tool (SAMLAssertionGen-master.zip) build by Lundbeck (KLJ) 
  
SAMLAssertion-API_IC-<ENV>.properties
  - One property file per SF/PP environment matching the for the purpose in XCA created certs and keys
    - clientId: The "API Key" given when registrering certificate in SF (Action search: "Manage OAuth2 Client Applications")
	- Username: API_IC (SF/PP user with necessary oData priviledges; matching "Bind to user" in OAuth2 client app. registration). 
	- Privatekey: The private key matching the "X.509 certificate" inserted in OAuth2 client app. registration form. 
	              Use PKCS#8 (*.pk8), Unencrypted private key in PKCS#8 text format when exporting key from XCA. 
					- Remove header/footer (-----BEGIN PRIVATE KEY----- + -----END PRIVATE KEY-----) 
					- Remove line breaks ( search "\n" replace with "" ) 

SAML assertions are generated executing the jar file like this: 
	- java -jar SAMLAssertionGen-1.0.0.jar SAMLAssertion-API_IC-<ENV>.properties
	- The generated assertions have been copied into: database\sql_script_IIBUSER\insert\INT0079_CONNECTION.sql
	
Considerations done
	- There seem to be no big benefit from security perspective to generate new SAML assertions often. 
	- Therefore assertion have been generated with a life span (7303 days) approximately like the generated certificates
	