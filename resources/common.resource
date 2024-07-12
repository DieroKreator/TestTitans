*** Settings ***
Library    RequestsLibrary

*** Keywords ***
Create User
    [Arguments]    ${base_url}    ${userName}    ${password}
    ${body}    Create Dictionary    userName=${userName}    password=${password}
    ${response}    POST    url=${base_url}https://bookstore.toolsqa.com/swagger/#/Account/AccountV1UserPost   json=${body}
    [Return]    ${response}

    Status Should Be    200

    ${response_body}=    Evaluate    json.loads('''${response.content}''')    json
    Log To Console    ${response_body}

    Should Be Equal    ${response_body['username']}    ${userName}

    ${userId}    Set Variable    ${response_body['userId']}
    Set Suite Variable    ${userId}
    Log To Console    ${userId}

Create Bearer
    [Arguments]    ${url}    ${userName}    ${password}
    ${body}    Create Dictionary    username=${userName}    password=${password}
    ${response}    POST    url=${url}/Account/v1/GenerateToken    json=${body}

    Status Should Be    200

    ${response_body}=    Evaluate    json.loads('''${response.content}''')    json
    ${bearer}    Set Variable    ${response_body['token']}
    Set Suite Variable    ${bearer}
    Log To Console    ${bearer}

Create Authentication
    [Arguments]    ${url}    ${userName}    ${password}
    ${body}    Create Dictionary    username=${userName}    password=${password}
    ${response}    POST    url=${url}/Account/v1/Authorized    json=${body}

    Status Should Be    200

    ${response_body}=    Evaluate    json.loads('''${response.content}''')    json
    Log To Console    ${response_body}

    Should Be Equal    ${response_body}    true

Steps
    [Arguments]    ${url}    ${userName}    ${password}
    Create User    ${url}    ${userName}    ${password}
    Create Bearer    ${url}    ${userName}    ${password}
    Create Authentication    ${url}    ${userName}    ${password}

