*** Settings ***
Library     SeleniumLibrary
Resource    ../../page_object/page_object.resource
Variables    ../../resource/configuration/environment.py

*** Keywords ***

User in login page
    SeleniumLibrary.Wait Until Element Is Visible    ${logo}    30s
    SeleniumLibrary.Element Should Be Visible    ${logo}    30s
    Sleep    5s

User enter valid credentials
    SeleniumLibrary.Element Should Be Visible    ${username_field}      30s
    SeleniumLibrary.Input Text    ${username_field}     ${qa.username}
    SeleniumLibrary.Element Should Be Visible    ${password_field}      30s
    SeleniumLibrary.Input Password    ${password_field}    ${qa.password}
    Sleep    3s
    
User click on login button
    SeleniumLibrary.Element Should Be Visible    ${login_button}        30s
    SeleniumLibrary.Click Button    ${login_button}
    Sleep    3s
    
User in main page
    SeleniumLibrary.Element Should Be Visible    ${main_page_logo}