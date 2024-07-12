*** Settings ***
Library    RequestsLibrary
Library    OperatingSystem
Resource       ../../resources/common.resource/

*** Variables ***
${userName}    
${password}    
${url}    
${base_url}    

*** Test Cases ***
Test Get User ID
    [Documentation]    Test to get User ID and print response content
    ${body}    Create Dictionary    userName=${userName}    password=${password}
    ${response}    POST    url=${base_url}https://bookstore.toolsqa.com/swagger/#/Account/AccountV1UserPost   json=${body}


