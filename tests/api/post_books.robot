*** Settings ***
Library           RequestsLibrary

*** Variables ***
${BASE_URL}    https://bookstore.toolsqa.com/BookStore/v1/Books  # Replace with your actual endpoint

*** Test Cases ***
Send POST Request With JSON
    Create Session    mysession    ${BASE_URL}
    ${headers}=    Create Dictionary    Content-Type=application/json
    ${data}=    Create Dictionary    userId=66bd73e6-1941-4d00-91b5-536e647f822c    collectionOfIsbns=[{"isbn": "9781449331818"}]
    ${response}=    Post Request    mysession    /BookStore/v1/Books    headers=${headers}    json=${data}
    #${response}    POST    ${BASE_URL}    json=${data}
    Should Be Equal As Numbers    ${response.status_code}    200  # Adjust the expected status code as needed
    #Log    ${response.json()}

