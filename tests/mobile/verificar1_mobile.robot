*** Settings ***
Library           AppiumLibrary
Test Teardown     Close Application

*** Variables ***
${SAUCE_USERNAME}    oauth-elmalopesmoura-4e217
${SAUCE_ACCESS_KEY}  8b2d3276-618a-4fe7-8757-4b3da4ddcb18
${REMOTE_URL}        https://${SAUCE_USERNAME}:5c133630-1dd2-4aba-913c-c6a9b3ef720d@ondemand.us-west-1.saucelabs.com:443/wd/hub
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
Test Case Name
    [Documentation]    Test the login and product selection process on Sauce Demo
    [Tags]             mobile

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

    Log To Console     Navigating to URL...
    Go To Url    ${URL}

    Log To Console     Entering username...
    Wait Until Page Contains Element    ${USERNAME}    10s
    Input Text       ${USERNAME}    standard_user

    Log To Console     Entering password...
    Wait Until Page Contains Element    ${PASSWORD}    10s
    Input Text       ${PASSWORD}    secret_sauce

    Log To Console     Clicking login button...
    Wait Until Page Contains Element    ${LOGIN_BUTTON}    10s
    Click Element    ${LOGIN_BUTTON}

    Log To Console     Verifying product image...
    Wait Until Page Contains Element    ${PRODUCT_IMAGE}    10s

    Log To Console     Verifying product name...
    Wait Until Page Contains Element    ${PRODUCT_NAME}    10s
    Element Text Should Be    ${PRODUCT_NAME}    Sauce Labs Backpack

    Log To Console     Verifying product price...
    Wait Until Page Contains Element    ${PRODUCT_PRICE}    10s
    Element Text Should Be    ${PRODUCT_PRICE}    \$29\.99

    Log To Console     Test completed successfully.