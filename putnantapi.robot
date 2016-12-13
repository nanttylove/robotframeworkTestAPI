*** Settings ***
Library    RequestsLibrary



*** Variables ***
${URL_PUT}    http://localhost:5000



*** Keywords ***
PUT API NANT TEST
    Create Session    NANTAPI    ${URL_PUT}
    &{data}=  Create Dictionary    name=nantRobot    text=Nant edit Hello world
    &{headers}=  Create Dictionary    Content-Type=from-data
    ${resp}=  PUT Request    NANTAPI    /todos/1    data=${data}    headers=${headers}
    Log   ${resp.text}
    Should Contain  ${resp.text}  200
    Should Contain  ${resp.text}  status:ok



*** Test Cases ***
PUT API NANT TEST
    PUT API NANT TEST
