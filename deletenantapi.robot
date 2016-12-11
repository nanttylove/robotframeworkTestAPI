*** Settings ***
Library    RequestsLibrary



*** Variables ***
${URL_DELETE}    http://localhost:5000



*** Keywords ***
DELETE API NANT TEST
    Create Session    NANTAPI    ${URL_DELETE}
    ${resp}=    DELETE Request    NANTAPI    /todos/1
    Log   ${resp.text}
    Should Contain  ${resp.text}  200
    Should Contain  ${resp.text}  ok



*** Test Cases ***
DELETE API NANT TEST
    DELETE API NANT TEST
