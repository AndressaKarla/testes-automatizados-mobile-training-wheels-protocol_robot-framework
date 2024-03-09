*** Settings ***
Library        AppiumLibrary

*** Test Cases ***
Validar clicar no botão COMEÇAR
    Set Appium Timeout    5
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UIAutomator2
    ...                 platformName=Android
    ...                 deviceName=Dispositivo Físico ou Emulador Android
    ...                 app=${EXECDIR}/app/twp.apk
    
    Wait Until Page Contains    Training Wheels Protocol    
    Click Text    COMEÇAR

    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/toolbarTitle       
    Element Text Should Be    id=io.qaninja.android.twp:id/toolbarTitle    AVENGERS    
    
    Capture Page Screenshot
    Close Application                                   