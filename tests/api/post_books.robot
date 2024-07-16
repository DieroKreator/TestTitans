*** Settings ***
Library           RequestsLibrary

*** Variables ***
#${BASE_URL}    https://bookstore.toolsqa.com/BookStore/v1/Books  # Replace with your actual endpoint
${bearer}    eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyTmFtZSI6ImFydGh1cmd1ZWRlcyIsInBhc3N3b3JkIjoiQTFiQENkZWYiLCJpYXQiOjE3MjExNTc2MTN9.qQ1GhzNkR5waO2W7xb1wWg6ZjvMiC6rrei4tZgFhVok
${BASE_URL}    https://bookstore.toolsqa.com/swagger/#/BookStore/BookStoreV1BooksPost

*** Test Cases ***
Send POST Request With JSON
    Create Session    mysession    ${BASE_URL}
    ${headers}=    Create Dictionary    Content-Type=application/json    Authorization=${bearer}
    ${data}=    Create Dictionary    userId=7a3fed54-de6c-477f-a9e7-ef8e393cb452    collectionOfIsbns=[{"isbn": "9781449331818"}]
    #${response}=    Post Request    mysession    /BookStore/v1/Books    headers=${headers}    json=${data}
    ${response}    POST    ${BASE_URL}    json=${data}
    Should Be Equal As Numbers    ${response.status_code}    200  # Adjust the expected status code as needed
    #Log    ${response.json()}

