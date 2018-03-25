*** Settings ***
Library			Selenium2Library
Suite Setup		Go to YouTube
Suite Teardown	Close All Browsers


*** Test Cases ***
Search and check video playback
    Click and check video   Хочу домой       "Хочу домой" из Мумбаи - Трущобы Дхарави.      Чтобы у меня была возможность снять следующий сезон, эта серия должна набрать 200 тысяч просмотров.    

*** Keywords ***
Go to YouTube
	Open Browser    https://www.youtube.com/    firefox

Click and check video
    [Arguments]     ${search_text}     ${link_text}    ${video_description}   
    Input Text      name=search_query      ${search_text}
    Click Element   id=search-icon-legacy     
    Click Element   partial link:${link_text}
    Wait Until Page Contains    ${video_description}  
