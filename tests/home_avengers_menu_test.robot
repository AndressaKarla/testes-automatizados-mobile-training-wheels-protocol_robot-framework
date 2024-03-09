*** Settings ***
Library        AppiumLibrary

*** Test Cases ***
Validar clicar no menu hamburguer
    Set Appium Timeout    5
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UIAutomator2
    ...                 platformName=Android
    ...                 deviceName=Dispositivo Físico ou Emulador Android
    ...                 app=${EXECDIR}/app/twp.apk
    
    Wait Until Page Contains    Training Wheels Protocol    
    Click Text    COMEÇAR
    Wait Until Element Is Visible    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]    

    Click Element    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]    
    Element Should Be Visible    id=io.qaninja.android.twp:id/rvNavigation
    
    Capture Page Screenshot
    Close Application                                   