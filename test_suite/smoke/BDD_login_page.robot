*** Settings ***
Documentation       This file is an robot file to run and execute the testcases

Library     SeleniumLibrary
Variables    ../../resource/configuration/environment.py
Resource     ../../resource/core_testcase/core_testcase.resource
Resource     ../../resource/keywords/key_login_audactin.resource

*** Test Cases ***

Test 001 Login to the website
    [Tags]  smoke   login
    Given User in login page
    When User enter valid credentials
    And User click on login button
    Then User in main page