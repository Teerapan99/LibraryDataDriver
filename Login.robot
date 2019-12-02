*** Settings ***
Library      SeleniumLibrary


*** Variables ***
${Browser}       Chrome
${Url}           https://accounts.google.com/ServiceLogin/signinchooser?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin
${idusername}     id=identifierId
${idPass}         name=password
${idusername_Next}      //*[@id="identifierNext"]/span/span
${idPass_Next}         //*[@id="passwordNext"]/span/span


*** Keywords ***
Open my Browser
     open browser      ${Url}       ${Browser}
     Maximize Browser Window
Input username
     [Arguments]     ${Username}
     Input Text    ${idusername}     ${Username}
     Click Element      ${idusername_Next}

Input Password
     sleep   2S
     [Arguments]      ${Pass}
     Input Text    ${idPass}     ${Pass}
     Click Element        ${idPass_Next}
      sleep   10S
