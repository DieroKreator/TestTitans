*** Settings ***
Library        RequestsLibrary
Library    OperatingSystem
Resource       ../../../resources/common.resource
Variables      ../../../resources/variables.py
Suite Setup    Steps    ${url}    ${userName}    ${password}

*** Test Cases ***
Delete UserId
    [Documentation]    Teste para deletar um usuário (Necessário token de autorização)
    [Tags]    authorization
    ${headers}    Create Dictionary    Authorization=Bearer ${bearer}
    ${response}    DELETE    url=${url}/Account/v1/User/${userID}    headers=${headers}

    ${response_body}    Set Variable    ${response.json()}
    Log To Console    ${response_body}

    Status Should Be    200
    # Should Be Equal    ${response_body}[userId]    ${userID}
    # Should Be Equal    ${response_body}[username]    ${userName}