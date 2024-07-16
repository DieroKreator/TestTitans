*** Settings ***
Library    Collections
Library    RequestsLibrary
Library    JSONLibrary
Library    OperatingSystem

*** Variables ***
${expected_id}=    12345
${expect_username}=    Rodolfo 
${expected_isbn}    978144932586
${expected_title}   Eli
${expected_author}    Rodolfo
${expected_pages}    0   
${expected_publisher}=    Moura


*** Keywords ***
Verify Book Details
    [Arguments]    ${expected_isbn}    ${expected_title}    ${expected_author}    
    ...    ${expected_pages}    ${expected_publisher}    ${expected_id}    ${expect_username}
        ${book_details} =    Create Dictionary    isbn=${expected_isbn}    title=${expected_title}    
        ...    author=${expected_author}    pages=${expected_pages}    publisher=${expected_publisher}    
        ...    id=${expected_id}    username=${expect_username}        

    Log    Book details verified successfully.

Verificar Descrição ISBN
    [Documentation]    Verifica a descrição do ISBN
    Log    Verifying ISBN description...

Verificar Mensagem de Erro 400
    [Documentation]    Verifies the error message for status 400
    Log    Verifying error message for status 400: Erro

Verificar Mensagem de Erro 401
    [Documentation]    Verifies the error message for status 401
    Log    Verifying error message for status 401: Não autorizado