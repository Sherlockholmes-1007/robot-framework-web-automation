*** Settings ***
Documentation   this is the core resource to open and close broswer

Library     SeleniumLibrary
Variables   ../../resource/configuration/environment.py

*** Variables ***
${mode}     --head

*** Keywords ***
Launch chrome browser
    SeleniumLibrary.Open Browser
    ...    url=${${env}.url}
    ...    browser=${browser}
    ...    options=add_argument("${mode}"); add_argument("--no-sandbox"); add_argument('--disable-dev-shm-usage'); add_argument("--ignore-certificate-errors"); add_argument("start-maximized")
    SeleniumLibrary.Maximize Browser Window

Close chrome browser
    SeleniumLibrary.Close Browser

