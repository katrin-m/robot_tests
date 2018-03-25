*** Settings ***
Library			Selenium2Library
Suite Setup		Go to Facebook
Suite Teardown	Close All Browsers 


*** Test Cases ***
Incorrect log in to Facebook
    Check & Log In	Unnamed_user	Unnamed_password	The email or phone number you’ve entered doesn’t match any account. 

*** Keywords ***
Go to Facebook
	Open Browser	https://www.facebook.com/login		firefox

Check & Log In
	[Arguments]		${logintotext}	${password} 	${message}
	Input Text		id=email		${logintotext}
    Input Text      id=pass         ${password}
	Click Element   id=loginbutton
	Wait Until Page Contains	${message}		10