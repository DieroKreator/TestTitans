*** Settings ***
Library    SeleniumLibrary


* Variables *
${URL}  https://testando.eveclass.com/pt
${LINK_TEXT_COMECAR_AGORA}  Começar Agora
${SUPPORT_ACTION_BUTTON}  css=#support-action > .button-text > span > span
${EMAIL_INPUT}  css=.input-wrapper > .input-wrapper-inpt > input[type='email']
${PASSWORD_INPUT}  css=.input-wrapper > .input-wrapper-inpt > input[type='password']
${LOGIN_BUTTON}  css=.button-text > span
#${SUCCESS_ELEMENT}  css=.user-icon  # Altere para o seletor do elemento que indica sucesso
${SUCCESS_ELEMENT}  css=.overview-group-title.overview-group-title_primary

* Keywords *
Open Login Page
    [Arguments]  ${url}
    Open Browser  ${url}  browser=chrome
    Set Window Size  829  700

Click Começar Agora
    Click Link  ${LINK_TEXT_COMECAR_AGORA}

Click Support Action Button
    Click Element  ${SUPPORT_ACTION_BUTTON}

Enter Email
    [Arguments]  ${email}
    Input Text  ${EMAIL_INPUT}  ${email}

Enter Password
    [Arguments]  ${password}
    Input Text  ${PASSWORD_INPUT}  ${password}

Click Login Button
    Click Element  ${LOGIN_BUTTON}
    Sleep    50s
Verify Login Successful
    Element Should Be Visible  ${SUCCESS_ELEMENT}

    