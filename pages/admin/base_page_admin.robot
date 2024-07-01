*** Settings ***
Library    SeleniumLibrary
Library    DateTime
Library    ../../.venv/lib/python3.12/site-packages/robot/libraries/String.py

Resource    consultar_venda_produtos_page.robot
Resource    consultar_saldo_total_page.robot
Resource    sacar_page.robot
Resource    login_admin_page.robot

*** Variables ***
${timeout}    5000ms
${url}        https://testando.eveclass.com/pt/auth/entrar
${browser}    Chrome
${date}

#Variaveis Helena
${btn_vendas}    css=div.context-admin div.topbar.topbar-desktop:nth-child(1) div.topbar-left div:nth-child(3) a.nav-item.clickable.has-border > div.item-pill
${meu_saldo}    css=div.context-admin div.app-content:nth-child(2) div.container.has-sidebar:nth-child(2) div.page div.sale-overview div.overview div.overview-group:nth-child(1) div.overview-group-items a.widget.widget.widget-balance.undefined.undefined div.text > p.text-title

*** Keywords ***
Abrir navegador
    #Register Keyword To Run On Failure    Tirar Screenshot
    Open Browser    url=${url}    browser=${browser}
    Maximize Browser Window
    Set Browser Implicit Wait    10000ms
    #Wait Until Element Is Visible    css=auth-header    ${timeout}
    #Wait Until Element Contains    css=.h1    Entrar    ${timeout}

Fechar navegador
    Sleep    500ms
    Close Browser

Realizar Logout
    Click Button    css=.dropdown-icon.fas.fa-chevron-down
    Wait Until Element Is Visible    css=.dropdown-item.dropdown_footer
    Click Link    css=.dropdown-item.dropdown_footer   
    Wait Until Element Contains    css=.span    Advanced Tests - Teste

Obter Data e hora
    ${date} =    Get Current Date
    ${date} =    Convert Date    ${date}    result_format=%Y.%m.%d_%H.%M.%S
    ${date}    Set Global Variable    ${date}

Tirar Screenshot    
    [Arguments]    ${screenshot_name}    
    Capture Page Screenshot    screenshots/eveclassTestandoAdmin/${date}/${TEST_NAME}/${screenshot_name}.jpg

#Keywords Helena
Clicar em "Vendas"
    Click Element    ${btn_vendas} 

Clicar em "Meu Saldo"
    Click Element    ${meu_saldo} 

Converter valor para float
    [Arguments]    ${valor}
    ${texto}=    Get Text    ${valor}
    ${cleaned_text}=    Remove String    ${texto}    R$    # Remove "R$"
    ${cleaned_text}=    Remove String    ${cleaned_text}    .    # Remove "."
    ${cleaned_text}=    Replace String    ${cleaned_text}    ,    .    # Replace "," with "."
    Log    Texto limpo: ${cleaned_text}  
    ${value}=    Convert To Number    ${cleaned_text}
    [Return]    ${value}

    #[Arguments]    ${value}
    #${cleaned_value}=    Remove String    ${value}    R$    # Remove "R$"
    #${cleaned_value}=    Remove String    ${cleaned_value}    .    # Remove "."
    #${cleaned_value}=    Replace String    ${cleaned_value}    ,    .    # Replace "," with "."
    #${number}=    Evaluate    float(${cleaned_value})
    #[Return]    ${number}

Calculate Sum
    [Arguments]    ${first_value}    ${second_value}    ${third_value}
    ${first_number}=    Converter valor para float    ${first_value}
    ${second_number}=    Converter valor para float    ${second_value}
    ${third_number}=    Converter valor para float    ${third_value}
    ${sum}=    Evaluate    ${first_number} + ${second_number} + ${third_number}
    [Return]    ${sum}