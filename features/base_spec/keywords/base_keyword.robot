*** Settings ***
Library        AppiumLibrary

*** Keywords ***
Dado que eu acesse o aplicativo Training Wheels Protocol em um dispositivo mobile Android 
    Set Appium Timeout    5
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UIAutomator2
    ...                 platformName=Android
    ...                 deviceName=Dispositivo Físico ou Emulador Android
    ...                 app=${EXECDIR}/app/twp.apk
E que eu esteja na tela inicial QA Ninja Training Wheels Protocol Mobile Version    
    Wait Until Page Contains    Training Wheels Protocol 

Quando eu clicar no botão COMEÇAR    
    Click Text    COMEÇAR
       
Encerrar sessão    
    Capture Page Screenshot
    Close Application                                  