*** Settings ***
Library			Selenium2Library
Suite Setup		Go to Yandex
Suite Teardown	Close All Browsers


*** Test Cases ***
Ensure the capital of a Russia is displayed
	Search and check		Russia		Москва
Ensure the capital of a France is displayed
	Search and check		France		Париж
Ensure the capital of a Netherlandsis displayed
	 Search and check		The Netherlands		Амстердам
Ensure the capital of a Denmark is displayed 
	 Search and check		Denmark		Копенгаген



*** Keywords ***
Go to Yandex
	Open Browser	https://yandex.ru/		firefox


Search and check
	[Arguments]		${search_text}	${expected_result}
	Input Text		name=text		${search_text}
	Click Element   class=search2__button
	Wait Until Page Contains	${expected_result}    2