*** Settings ***
Library			Selenium2Library
Suite Setup		Go to Google
Suite Teardown	Close All Browsers


*** Test Cases ***
Ensure the capital of a country is displayed
	Search and check		Russia				Moskwa
	Search and check		France				Paryż
	Search and check		The Netherlands		Amsterdam
	Search and check		Denmark				Kopenhaga



*** Keywords ***
Go to Google
	Open Browser	https://google.com		firefox


Search and check
	[Arguments]		${search_text}	${expected_result}
	Input Text		id=lst-ib	${search_text}
	Press Key 		id=lst-ib 	\\13
	Wait Until Page Contains	${expected_result}    2
