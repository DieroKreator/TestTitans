*** Settings ***
Library    SeleniumLibrary
Library    ../../.venv/Lib/site-packages/robot/libraries/XML.py
Resource    ../admin/saldo_total_page.robot

*** Keywords ***
Acesso a página Cursos
    [Documentation]    Step: acesso a página Cursos
    Sleep    2000ms
    Mouse Over    css=.dropdown.user-dropdown
    Click Element    xpath=//p[text()="Website"]
    Click Element    id=16237702146520

Acesso ao curso especifico escolhido
    [Documentation]    Step: acesso ao curso especifico escolhido
    Click Element    xpath=//h3[text()="Curso de Matemática"]

Acesso a pagina de pagamento do curso 
    Click Element    xpath=//span[text()="Comprar"]  

Clique na caixa "PIX"
    Click Element    xpath=//button[text()=" PIX "]

Clique na caixa "Boleto"
    Click Element    xpath=//button[text()=" Boleto "]

Clique na caixa "Cartão"
    Click Element    xpath=//button[text()=" Cartão "]

Preencher informacoes de pagamento : sou pessoa juridica , CPF , Telefone , Endereço
    Input Text    xpath=//input[@data-vv-as='CPF']    442.279.298-90
    Input Text    xpath=//input[@data-vv-as='Telefone']    55551195201
    Input Text    xpath=//input[@data-vv-as='CEP']    01320000

Preencher informacoes de pagamento : cartão ,sou pessoa juridica , CPF , Telefone , Endereço
    #Input Text    xpath=//input[@data-vv-as='xxxx xxxx xxxx xxxx']    5442 4361 8051 5596
    #Input Text    xpath=//input[@data-vv-as='MM/YY']    11/25
    #Input Text    xpath=//input[@data-vv-as='CVV']    763
    #Input Text    xpath=//input[@data-vv-as='Nome no cartão']    ARTHUR GUEDES DE ARAUJO    
    Input Text    xpath=//input[@data-vv-as='CPF']    442.279.298-90
    Input Text    xpath=//input[@data-vv-as='Telefone']    55551195201
    Input Text    xpath=//input[@data-vv-as='CEP']    01320000
    

Clique no botão "Confirmar Compra" PIX
    Click Element    xpath=//span[text()="Confirmar Compra"]
    Page Should Contain    Escaneie o QR Code com o aplicativo do seu banco para realizar o pagamento.

Clique no botão "Confirmar Compra" Boleto
    Click Element    xpath=//span[text()="Confirmar Compra"]
    Page Should Contain    Pedido realizado com sucesso!
    Page Should Contain Element    xpath=//span[text()="Visualizar e Imprimir Boleto"]
    Click Element    xpath=//span[text()="Visualizar e Imprimir Boleto"]     

Clique no botão "Confirmar Compra" Cartão
    Page Should Contain Element    xpath=//span[text()="Confirmar Compra"]
    Click Element    xpath=//span[text()="Confirmar Compra"]
    
        