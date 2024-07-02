*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${DASHBOARD_URL}    https://testando.eveclass.com/pt/dashboard
${Cursos}
${sobre}
${Blog}
${Contato}    css=.#\31 6237703495650 > .item-pill
${Fale Conosco}

*** Keywords ***
Open Dashboard Page
    Open Browser    ${DASHBOARD_URL}    chrome
    Maximize Browser Window

Click Menu Item
    [Arguments]    ${menu_item}  
    Click Element    xpath://a[contains(text(),'${menu_item}')]
    
Verify Page Contains
    [Arguments]    ${expected_text}
    Wait Until Page Contains    ${expected_text}

Close Dashboard
    Close All Browsers