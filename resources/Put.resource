*** Settings ***
Library    Collections
Library    BuiltIn
Library    JSONLibrary
Library    RequestsLibrary

*** Variables ***
${base_url}    https://bookstore.toolsqa.com
${json_file}    path/to/your/fixtures/put.json
${erro}    400        
${error_model}    "code": 0, "message": "Erro"    

*** Keywords ***
Load Book Data
    [Arguments]    ${json_file}
    ${json_data}    Load JSON From File    ${json_file}
    [Return]    ${json_data}

Extract Book Fields
    [Arguments]    ${json_data}
    ${new_title}    Set Variable    ${json_data['books'][0]['title']}
    ${valid_book_id}    Set Variable    ${json_data['userId']}
    [Return]    ${new_title}    ${valid_book_id}

Update Book Title
    [Arguments]    ${session}    ${book_id}    ${title}
    Create Session    ${session}    ${base_url}
    ${body}    Create Dictionary    title=${title}
    ${headers}    Create Dictionary    Content-Type=application/json
    ${response}    Put On Session    ${session}    /BookStore/v1/Books/${book_id}    json=${body}    headers=${headers}
    [Return]    ${response}

Verify Update Response
    [Arguments]    ${response}    ${expected_status}    ${expected_title}
    ${status_code}    Set Variable    ${response.status_code}
    Should Be Equal As Numbers    ${status_code}    ${expected_status}
    ${content_type}    Set Variable    ${response.headers['Content-Type']}
    Run Keyword If    '${content_type}' == 'application/json'
    ...    Evaluate JSON Response    ${response}    ${expected_title}
    ...    ELSE
    ...    Log    Response is not JSON: ${response.content}

Evaluate JSON Response
    [Arguments]    ${response}    ${expected_title}
    ${updated_book}    Evaluate    json.loads('''${response.content}''')
    Should Be Equal    ${updated_book['title']}    ${expected_title}

Log Response
    [Arguments]    ${response}
    Log    ${response}

Verify Error Response
    [Arguments]    ${response}    ${expected_status}
    ${status_code}    Set Variable    ${response.status_code}
    Should Be Equal As Numbers    ${status_code}    ${expected_status}
    ${content_type}    Set Variable    ${response.headers['Content-Type']}
    Should Be Equal    ${content_type}    application/json

    ${error_response}    Set Variable    ${response.content}
    ${error_model}    Evaluate    json.loads('''${error_model}''')
    ${error_response}

    ${error_code}    Set Variable    ${error_model}['code']
    ${error_message}    Set Variable    ${error_model}['message']
    Should Be Equal    ${error_code}    ${400}