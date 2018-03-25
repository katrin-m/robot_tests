*** Settings ***
Library			Selenium2Library
Suite Setup		Go to VK
Suite Teardown	Close All Browsers


*** Test Cases ***
Incorrect log in to VK
    Check & Log In	Unnamed_user	Unnamed_password	Unable to log in.

*** Keywords ***
Go to VK
	Open Browser	https://vk.com/login		firefox

Check & Log In
	[Arguments]		${logintext}	${password} 	${message}
	Input Text		id=email		${logintext}
    Input Text      id=pass         ${password}
	Click Element   id=login_button
	Wait Until Page Contains	${message}		5