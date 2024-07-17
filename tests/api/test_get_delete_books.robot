*** Settings ***
Library    RequestsLibrary
Library    OperatingSystem
Library    Collections
Resource    ../../resources/common.resource
Variables    ../../resources/variables.py  
Suite Setup    Steps    ${url}    ${userName}    ${password}
Suite Teardown    Delete User    ${url}    ${userName}    ${password}

*** Test Cases ***

Create Books
    ${headers}    Create Dictionary    Content-Type=${content_type}    
    ...    Authorization=Bearer ${bearer} 
    
    # Carregar o conteúdo JSON
    ${body}    Evaluate    json.loads(open("./fixtures/json/books.json").read())
    
    # Atualize o userId no JSON
    Set To Dictionary    ${body}    userId=${userId}

    ${response}    POST    ${url}/BookStore/v1/Books    json=${body}    
    ...    headers=${headers}
    
    ${response_body}    Set Variable    ${response.json}
    Log To Console    ${response_body}

    Status Should Be    201  

Get Books 
    ${headers}    Create Dictionary    Authorization=Bearer ${bearer}    Content-Type=${content_type}
    ${response}    GET    url=${url}/BookStore/v1/Books
    ${response_body}    Set Variable    ${response.json()}
    Log To Console    ${response_body}   
     
    ${books_added}    Evaluate    json.loads(open("./fixtures/json/books.json").read())
    
    Status Should Be    200
    Should Be Equal    ${response_body}[books][0][isbn]    ${books_added}[collectionOfIsbns][0][isbn]
    Should Be Equal    ${response_body}[books][1][isbn]    ${books_added}[collectionOfIsbns][1][isbn]

Delete Books 
    ${headers}    Create Dictionary    Authorization=Bearer ${bearer}    Content-Type=${content_type}
    ${params}    Create Dictionary    UserId=${userId}   
    ${response}    DELETE    url=${url}/BookStore/v1/Books    headers=${headers}    params=${params}  

    Status Should Be    204