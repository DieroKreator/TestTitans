*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://bookstore.toolsqa.com/swagger/#/BookStore/BookStoreV1BooksPost    

*** Keywords ***
addListOfBooks
    Create Session    mySession    ${BASE_URL}
    ${headers}=    Create Dictionary    Content-Type=application/json
    ${data}=    Create Dictionary    userId=10b234ec-4e9c-4a8b-8a85-1b2a7b2fbfcd    collectionOfIsbns=[{"isbn": "9781449331818"}]
    ${response}    POST    url=https://bookstore.toolsqa.com/swagger/#/BookStore/BookStoreV1BooksPost    json=${data}
    Log    Response status: ${response.status_code}
    Log    Response content: ${response.content}
    Should Be Equal As Strings    ${response.status_code}    200
    RETURN    ${response.json()}