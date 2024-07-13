*** Settings ***
Library    RequestsLibrary

*** Keywords ***
addListOfBooks
    [Arguments]    ${base_url}    ${userId}    ${ISBN}
    ${body}    Create Dictionary    userId=${userId}    isbn=${ISBN}
    ${response}    POST    url=${base_url}https://bookstore.toolsqa.com/swagger/#/BookStore/BookStoreV1BooksPost${ISBN}    json=${body}
    Log    Response status: ${response.status_code}
    Log    Response content: ${response.content}
    Should Be Equal As Strings    ${response.status_code}    200
    RETURN    ${response.json()}