*** Comments ***
This file used for launch and close browser test level


*** Settings ***
Resource            ../../resource/core_testcase/core_testcase.resource

Test Setup          Launch chrome browser
Test Teardown       Close chrome browser