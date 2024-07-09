*** Settings ***
Library    AppiumLibrary
Test Teardown    Close Application

*** Variables ***
${SAUCE_USERNAME}    testtitan03
${SAUCE_ACCESS_KEY}    bb5c0163-085e-4637-8c3c-c3303eb6adce
${REMOTE_URL}    https://${SAUCE_USERNAME}:${SAUCE_ACCESS_KEY}@ondemand.us-west-1.saucelabs.com:443/wd/hub
${EMAIL}    arthur.guedes@hotmail.com
${PASSWORD}    ArthurGuedes1708/

*** Test Cases ***
Pagamento por pix
     Open Application    ${REMOTE_URL}   
    ...    platformName=Android    
    ...    appium:platformVersion=9.0    
    ...    appium:deviceName=Samsung Galaxy S9 FHD GoogleAPI Emulator    
    ...    browserName=chrome    browserVersion=126    
    ...    appium:automationName=uiautomator2    
    ...    appium:ensureWebviewsHavePages=${True}    
    ...    appium:url=www.saucedemo.com     
    ...    appium:nativeWebScreenshot=${True}    
    #...    sauce:options=[object Object]    
    ...    appium:newCommandTimeout=${3600}    
    ...    appium:connectHardwareKeyboard=${True}
    Go To Url    https://www.saucedemo.com/
    
    Swipe    ${862}    ${1558}    ${874}    ${1104}
    ${el1} =    Set Variable     android=new UiSelector().text("Começar Agora")
    Click Element    ${el1}
    ${el2} =    Set Variable     android=new UiSelector().text("Entrar")
    Click Element    ${el2}
    @{finger} =    Create List    ${471}    ${908}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    ${el3} =    Set Variable     android=new UiSelector().resourceId("email-i-6514775642907476")
    Input Text    ${el3}    arthur.guedes@hotmail.com
    ${el4} =    Set Variable     android=new UiSelector().resourceId("senha-i-9745062858404852")
    Input Text    ${el4}    ArthurGuedes1708#
    Swipe    ${883}    ${747}    ${891}    ${369}
    ${el5} =    Set Variable     class=android.widget.Button
    Click Element    ${el5}
    Swipe    ${556}    ${1443}    ${539}    ${1265}
    @{finger} =    Create List    ${947}    ${1435}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    Swipe    ${480}    ${1566}    ${492}    ${1405}
    @{finger} =    Create List    ${132}    ${1172}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    Swipe    ${424}    ${1431}    ${424}    ${1329}
    @{finger} =    Create List    ${183}    ${632}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${925}    ${1350}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${883}    ${658}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${883}    ${1617}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${896}    ${696}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${917}    ${1605}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${925}    ${1426}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    Swipe    ${484}    ${1592}    ${509}    ${1409}
    @{finger} =    Create List    ${76}    ${144}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${989}    ${157}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${573}    ${1286}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    Swipe    ${688}    ${1672}    ${717}    ${1439}
    Swipe    ${887}    ${361}    ${891}    ${679}
    Swipe    ${853}    ${603}    ${828}    ${917}
    @{finger} =    Create List    ${72}    ${331}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${259}    ${654}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    Swipe    ${1040}    ${968}    ${1040}    ${760}
    Swipe    ${1044}    ${845}    ${1044}    ${798}
    Swipe    ${1048}    ${1112}    ${1057}    ${726}
    Swipe    ${1053}    ${1023}    ${1070}    ${543}
    Swipe    ${1044}    ${1197}    ${1044}    ${870}
    Swipe    ${1044}    ${1091}    ${1036}    ${811}
    @{finger} =    Create List    ${340}    ${1286}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    Swipe    ${1019}    ${1261}    ${1019}    ${1019}
    Swipe    ${879}    ${1231}    ${870}    ${874}
    @{finger} =    Create List    ${887}    ${1987}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    Swipe    ${947}    ${573}    ${908}    ${1065}
    @{finger} =    Create List    ${408}    ${777}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    Swipe    ${1027}    ${1078}    ${1027}    ${930}
    @{finger} =    Create List    ${1015}    ${807}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${441}    ${616}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    Swipe    ${1036}    ${1656}    ${1044}    ${1210}
    Swipe    ${1053}    ${1409}    ${1036}    ${1129}
    @{finger} =    Create List    ${700}    ${1129}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    @{finger} =    Create List    ${403}    ${1133}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    ${el6} =    Set Variable     android=new UiSelector().resourceId("cpf-i-6751727332764282")
    Input Text    ${el6}    149.768.870-14
    Swipe    ${1044}    ${1244}    ${1036}    ${968}
    ${el7} =    Set Variable     android=new UiSelector().resourceId("telefone-i-9488721619039521")
    Input Text    ${el7}    (67) 3905-9509
    Swipe    ${1048}    ${1061}    ${1036}    ${700}
    @{finger} =    Create List    ${815}    ${1307}
    @{positions} =    Create List    ${finger}
    Tap With Positions    ${100}    ${positions}
    Swipe    ${467}    ${1643}    ${488}    ${1486}
    Swipe    ${1032}    ${1240}    ${1019}    ${981}
    Swipe    ${1032}    ${1507}    ${1023}    ${1290}
    Swipe    ${1032}    ${925}    ${1040}    ${1299}
    Swipe    ${1006}    ${611}    ${1006}    ${900}
    Page Should Contain Text    Pagar com PIX
