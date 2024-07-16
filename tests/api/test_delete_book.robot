*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://bookstore.toolsqa.com/swagger/#/BookStore/BookStoreV1BookGet

*** Test Cases ***
Delete Book
    [Documentation]    Teste para deletar um livro (Necessário token de autorização)
    [Tags]    authorization
    Create Session    bookstore    ${BASE_URL}
    ${token}    Set Variable    YourAuthTokenHere
    ${headers}    Create Dictionary    Authorization=Bearer ${token}
    ${isbn}    Set Variable    9781449325862
    ${delete_payload}    Create Dictionary    userId=your_user_id    isbn=${isbn}
    ${response}    DELETE    bookstore    /Book    json=${delete_payload}    headers=${headers}
    Should Be Equal As Numbers    ${response.status_code}    204