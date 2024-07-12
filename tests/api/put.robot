*** Settings ***
Library    RequestsLibrary
Library    OperatingSystem
Resource    ../../../resources/Put.resource

*** Variables ***
${base_url}    
${ISBN}    
${userId}    

*** Test Cases ***
Test Update Book By ISBN
    [Documentation]    Test to update book information by ISBN
    ${response}    Update Book By ISBN    ${base_url}    ${ISBN}    ${userId}
    Log    Response status: ${response.status_code}
    Log    Response content: ${response}