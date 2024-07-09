*** Settings ***
Library    AppiumLibrary

*** Variables ***
${SAUCE_USERNAME}    testtitan01
${SAUCE_ACCESS_KEY}    c149e125-34d2-4dec-93d7-bf42673debac
${REMOTE_URL}    https://${SAUCE_USERNAME}:${SAUCE_ACCESS_KEY}@ondemand.us-west-1.saucelabs.com:443/wd/hub
${PLATFORM_NAME}     Android
${PLATFORM_VERSION}  9.0
${DEVICE_NAME}       Samsung Galaxy S9 FHD GoogleAPI Emulator
${BROWSER_NAME}      chrome
${BROWSER_VERSION}   126
${AUTOMATION_NAME}   uiautomator2
${URL}               https://www.saucedemo.com/
${USERNAME}          id=user-name
${PASSWORD}          id=password
${LOGIN_BUTTON}      id=login-button
${PRODUCT_IMAGE}     id=item_4_img_link
${PRODUCT_NAME}      xpath=//*[@id="item_4_title_link"]/div
${PRODUCT_PRICE}     class=inventory_item_price


*** Test Cases ***
Pagamento de produto no sauce demo
     Log To Console     Opening the application...
     Open Application    ${REMOTE_URL}  
     ...    platformName=${PLATFORM_NAME}
     ...    platformVersion=${PLATFORM_VERSION}
     ...    deviceName=${DEVICE_NAME}
     ...    browserName=${BROWSER_NAME}
     ...    automationName=${AUTOMATION_NAME}
     ...    ensureWebviewsHavePages=${True}
     ...    url=${URL}
     ...    nativeWebScreenshot=${True}
     ...    newCommandTimeout=${3600}
     ...    connectHardwareKeyboard=${True}
    Go To Url    ${URL}
    
    
    
    Wait Until Page Contains Element    ${USERNAME}    10s
    Input Text    ${USERNAME}    standard_user

    
    Wait Until Page Contains Element    ${PASSWORD}    10s
    Input Text    ${PASSWORD}    secret_sauce

    
    
    Wait Until Page Contains Element    ${LOGIN_BUTTON}    10s
    Click Element    ${LOGIN_BUTTON}

    
    @{finger} =    Create List    ${518}    ${1706}
    @{positions} =    Create List    ${finger}
    
    Click Element    id=add-to-cart-sauce-labs-backpack
    
    ${el4} =    Set Variable     class=shopping_cart_link
    Click Element    ${el4}
    
    ${el5} =    Set Variable     id=checkout
    Click Element    ${el5}
    ${el6} =    Set Variable     id=first-name
    Input Text    ${el6}    Arthur
    ${el7} =    Set Variable     id=last-name
    Input Text    ${el7}    Araujo
    ${el8} =    Set Variable     id=postal-code
    Input Text    ${el8}    01320000
    ${el9} =    Set Variable     id=continue
    Click Element    ${el9}
    
    ${el10} =    Set Variable     id=finish
    Click Element    ${el10}
    Page Should Contain Text    Your order has been dispatched, and will arrive just as fast as the pony can get there!
    Close All Applications
