***Settings***
Library           SeleniumLibrary
Library           DataDriver     TestData.xlsx
Resource          Login.robot
Suite Setup        Open my Browser
Suite Teardown     Close Browser
# Test Setup        Open Login Page
Test Template      valid Login

*** Test Case ***
Test Login     ${Username}    ${Pass}

*** Keywords ***
valid login
    [Arguments]    ${Username}    ${Pass}
    Input username    ${Username}
    Input Password    ${Pass}
