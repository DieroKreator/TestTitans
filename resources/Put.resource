*** Settings ***
Library    RequestsLibrary

*** Keywords ***
Update Book By ISBN
    [Arguments]    ${base_url}    ${ISBN}    ${userId}
    ${body}    Create Dictionary    userId=${userId}    isbn=${ISBN}
    ${response}    PUT    url=${base_url}https://bookstore.toolsqa.com/swagger/#/BookStore/BookStoreV1BooksByISBNPut${ISBN}    json=${body}
    Log    Response status: ${response.status_code}
    Log    Response content: ${response.content}
    Should Be Equal As Strings    ${response.status_code}    200
    RETURN    ${response.json()}