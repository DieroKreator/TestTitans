*** Settings ***
Library    RequestsLibrary

*** Keywords ***
Create User
    [Arguments]    ${url}    ${userName}    ${password}
    # ${headers}    Create Dictionary    Content-Type=${content_type}    #Header é opcional neste caso
    ${body}    Create Dictionary    username=${userName}    password=${password}

    ${response}    POST    url=${url}/Account/v1/User    json=${body}    
    # ...    headers=${headers}
    
    ${response_body}    Set Variable    ${response.json()}
    Log To Console    ${response_body}

    Status Should Be    201    # Validações
    Should Be Equal    ${response_body}[userName]    userName

    ${userId}    Set Variable    ${response.json()}[userId]
    Set Suite Variable    ${userId}                          #transforma a variável (token) em global para todo projeto ao realizar testes, lembrando que o token muda, portanto não poderia estar no variables.py
    Log to Console    ${userId}
    # "isbn": "string",
    #   "title": "string",
    #   "subTitle": "string",
    #   "author": "string",
    #   "publish_date": "2024-07-11T20:53:36.952Z",
    #   "publisher": "string",
    #   "pages": 0,
    #   "description": "string",
    #   "website": "string"

Create Bearer
    [Arguments]    ${url}    ${userName}    ${password}

    ${body}    Create Dictionary    username=${userName}    password=${password}
    ${response}    POST    url=${url}/Account/v1/GenerateToken    json=${body}

    Status Should Be    200
    ${bearer}    Set Variable    ${response.json()}[bearer]
    Set Suite Variable    ${bearer}                          #transforma a variável (token) em global para todo projeto ao realizar testes, lembrando que o token muda, portanto não poderia estar no variables.py
    Log to Console    ${bearer}

Create Authentication
    [Arguments]    ${url}    ${userName}    ${password}

    ${body}    Create Dictionary    username=${userName}    password=${password}
    ${response}    POST    url=${url}/Account/v1/Authorized    json=${body}

    ${response_body}    Set Variable    ${response.json()}
    Log To Console    ${response_body}

    Status Should Be    200
    Should Be Equal    ${response_body}    true

Steps
    [Arguments]    ${url}    ${userName}    ${password}
    Create User    ${url}    ${userName}    ${password}
    Create Bearer    ${url}   ${userName}    ${password}
    Create Authentication    ${url}    ${userName}    ${password}