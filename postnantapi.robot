*** Settings ***
Library    RequestsLibrary
Library    HttpLibrary.HTTP


*** Variables ***
${URL_POST}    http://localhost:5000



*** Keywords ***
POST API NANT TEST
    Create Session    NANTAPI    ${URL_POST}
    &{data}=  Create Dictionary    name=text    text=Hello word
    &{headers}=  Create Dictionary    Content-Type=application/x-www-form-urlencoded
    ${resp}=  POST Request    NANTAPI    /todos    data=${data}    headers=${headers}
    Log   ${resp.text}
    Should Contain  ${resp.text}  201
    Should Contain  ${resp.text}  ok



*** Test Cases ***
POST API NANT TEST
    POST API NANT TEST
