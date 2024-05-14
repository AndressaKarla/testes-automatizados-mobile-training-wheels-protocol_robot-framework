*** Settings ***
Documentation       Arquivo base com inicializações

Library             AppiumLibrary
Resource            env.resource
Variables           environments/${ENV}.json


*** Variables ***
${URL}      ${base_url}


*** Keywords ***
Iniciar sessão
    IF    '${PLATFORM}' == 'android'
        Set Appium Timeout    5
        Open Application    ${URL}
        ...    automationName=UIAutomator2
        ...    platformName=Android
        ...    deviceName=Dispositivo Físico ou Emulador Android
        ...    app=${EXECDIR}/apps/android/twp.apk
    END

Encerrar sessão
    Capture Page Screenshot
    Close Application
