*** Settings ***
Library    SeleniumLibrary
Library    ../../.venv/Lib/site-packages/robot/libraries/XML.py
Resource    ../admin/saldo_total_page.robot

*** Keywords ***
Acesso a página Contato
    [Documentation]    Step: acesso a página Cursos
    Sleep    2000ms
    Mouse Over    css=.dropdown.user-dropdown
    Click Element    xpath=//p[text()="Website"]
    Click Element    id=16237703495650



Preencher informacoes de fale conosco : escreva nome completo, email , mensagem
    Input Text    xpath=//input[@data-vv-as='Nome']    Arthur Guedes de Araujo
    Input Text    xpath=//input[@data-vv-as='Email']    arthur.guedes@hotmail.com
    Input Text    xpath=//textarea[@data-vv-as='Mensagem']    Contato de teste com mensagem para ser enviada


Clique no botão "Enviar"
    Click Element    xpath=//span[text()="Enviar"]
    Page Should Contain    Enviado     


    
        