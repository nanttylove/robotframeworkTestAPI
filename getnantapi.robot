*** Settings ***
Library    RequestsLibrary



*** Variables ***
${URL_GET}    http://localhost:5000



*** Keywords ***
Get API NANT TEST
    Create Session    NANTAPI    ${URL_GET}
    ${resp}=    Get Request    NANTAPI    /todos/2
    Should Contain  ${resp.text}  200
    Should Contain  ${resp.text}  ok



*** Test Cases ***
Get API NANT TEST
    Get API NANT TEST
