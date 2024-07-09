*** Settings ***
Library           AppiumLibrary
Test Teardown     Close Application

*** Variables ***
${SAUCE_USERNAME}    martintesto
${REMOTE_URL}    https://${SAUCE_USERNAME}:95253021-54e0-42e5-a7d2-e8e1395a874a@ondemand.us-west-1.saucelabs.com:443/wd/hub

*** Test Cases ***
Fazer Checkout com Carrinho Vazio
    Open Application    ${REMOTE_URL}     
    ...    platformName=Android    
    ...    appium:platformVersion=9.0    
    ...    appium:deviceName=Samsung Galaxy S9 FHD GoogleAPI Emulator    
    ...    browserName=chrome    
    ...    appium:automationName=uiautomator2    
    ...    appium:ensureWebviewsHavePages=${True}    
    ...    appium:url=https://www.saucedemo.com/    
    ...    appium:nativeWebScreenshot=${True}    
    ...    appium:newCommandTimeout=${3600}    
    ...    appium:connectHardwareKeyboard=${True}    
    # ...    sauce:options=[object Object]
    
    Go To Url    https://www.saucedemo.com/
    ${field_username} =    Set Variable     id=user-name
    Input Text    ${field_username}    standard_user
    ${field_password} =    Set Variable     id=password
    Input Text    ${field_password}    secret_sauce
    ${btn_login} =    Set Variable     id=login-button
    Click Element    ${btn_login}
    ${el6} =    Set Variable     css=.title
    Wait Until Element Is Visible    ${el6}
    ${el5} =    Set Variable     xpath=//div[@id="shopping_cart_container"]/a
    Click Element    ${el5}
    ${el6} =    Set Variable     css=.title
    Element Text Should Be    ${el6}    Your Cart
    ${el7} =    Set Variable     id=checkout
    Click Element    ${el7}
    ${el8} =    Set Variable     css=.title
    Wait Until Element Is Visible    ${el8}    
    Element Text Should Be    ${el8}    Checkout: Your Information
    ${el9} =    Set Variable     id=first-name
    Input Text    ${el9}    Andre
    ${el10} =    Set Variable     id=last-name
    Input Text    ${el10}    Test
    ${el12} =    Set Variable     id=postal-code
    Input Text    ${el12}    91210120
    ${el13} =    Set Variable     id=continue
    Click Element    ${el13}
    ${el14} =    Set Variable     css=.title
    Wait Until Element Is Visible    ${el14}
    ${el15} =    Set Variable     id=finish
    Click Element    ${el15}
    ${el16} =    Set Variable     css=h2.complete-header
    # Wait Until Element Is Visible    ${el16}    # Proposta de mensagem
    Element Should Not Contain Text    ${el16}    Thank you for your order!

# Test Case Name
#     [Tags]    skip
#     Open Application    ${REMOTE_URL}     
#     ...    platformName=Android    
#     ...    appium:platformVersion=9.0    
#     ...    appium:deviceName=Samsung Galaxy S9 FHD GoogleAPI Emulator    
#     ...    browserName=chrome    
#     ...    appium:automationName=uiautomator2    
#     ...    appium:ensureWebviewsHavePages=${True}    
#     ...    appium:url=https://www.saucedemo.com/    
#     ...    appium:nativeWebScreenshot=${True}    
#     ...    appium:newCommandTimeout=${3600}    
#     ...    appium:connectHardwareKeyboard=${True}    
#     # ...    sauce:options=[object Object]

#     Go To Url    https://www.saucedemo.com/
#     ${field_username} =    Set Variable     id=user-name
#     Input Text    ${field_username}    standard_user
#     ${field_password} =    Set Variable     id=password
#     Input Text    ${field_password}    secret_sauce
#     ${btn_login} =    Set Variable     id=login-button
#     Click Element    ${btn_login}
#     ${el6} =    Set Variable     xpath=//android.widget.TextView[@text="Products"]
#     # Wait Until Element Is Visible    ${el6}    Products
#     ${el4} =    Set Variable     xpath=//android.view.View[@text="Name (A to Z)"]
#     Click Element    ${el4}
#     ${el5} =    Set Variable     xpath=//android.widget.CheckedTextView[@resource-id="android:id/text1" and @text="Price (low to high)"]
#     Click Element    ${el5}
#     ${el7} =    Set Variable     class=android.widget.Image
#     Click Element    ${el7}
#     Swipe    ${511}    ${1797}    ${660}    ${408}
#     ${el12} =    Set Variable     xpath=//android.widget.TextView[@text="Sauce Labs Onesie"]
#     Click Element    ${el12}
#     ${el13} =    Set Variable     android=new UiSelector().text("$7.99")
#     Click Element    ${el13}
#     Swipe    ${545}    ${1953}    ${591}    ${1198}
#     Click Element    ${el13}
#     ${el14} =    Set Variable     id=add-to-cart
#     Click Element    ${el14}
#     Swipe    ${622}    ${1232}    ${671}    ${286}
#     Swipe    ${660}    ${343}    ${683}    ${1183}
#     Swipe    ${660}    ${454}    ${687}    ${1404}
#     ${el15} =    Set Variable     accessibility_id=1
#     Click Element    ${el15}
#     ${el16} =    Set Variable     android=new UiSelector().text("Sauce Labs Onesie")
#     Click Element    ${el16}
#     ${el17} =    Set Variable     accessibility_id=1
#     Click Element    ${el17}
#     ${el18} =    Set Variable     android=new UiSelector().text("$7.99")
#     Click Element    ${el18}
#     ${el19} =    Set Variable     id=remove
#     Click Element    ${el19}
#     Swipe    ${622}    ${1232}    ${671}    ${286}
#     Swipe    ${660}    ${343}    ${683}    ${1183}
#     Swipe    ${660}    ${454}    ${687}    ${1404}
#     ${el20} =    Set Variable     android=new UiSelector().resourceId("checkout")
#     Click Element    ${el20}
#     ${el21} =    Set Variable     android=new UiSelector().resourceId("first-name")
#     Input Text    ${el21}    Andre
#     ${el22} =    Set Variable     android=new UiSelector().resourceId("last-name")
#     Input Text    ${el22}    Test
#     ${el23} =    Set Variable     android=new UiSelector().resourceId("continue")
#     Click Element    ${el23}
#     ${el24} =    Set Variable     android=new UiSelector().text("Error: Postal Code is required")
#     Click Element    ${el24}
#     # ${el25} =    Set Variable     android=new UiSelector().resourceId("postal-code")
#     # Input Text    ${el25}    91210140
#     # ${el26} =    Set Variable     android=new UiSelector().resourceId("continue")
#     # Click Element    ${el26}