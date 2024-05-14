*** Settings ***
Library     AppiumLibrary
Resource    ../../resources/base.resource


*** Variables ***
${TITULO}       id=io.qaninja.android.twp:id/toolbarTitle


*** Keywords ***
Dado que eu acesse o aplicativo Training Wheels Protocol em um dispositivo mobile Android
    Iniciar sessão

E que eu esteja na tela inicial QA Ninja Training Wheels Protocol Mobile Version
    Wait Until Page Contains    Training Wheels Protocol
    Wait Until Page Contains    Mobile Version

Quando eu clicar no botão COMEÇAR
    Click Text    COMEÇAR

Então deverá apresentar a tela Home AVENGERS
    Wait Until Element Is Visible    ${TITULO}
    Element Text Should Be    ${TITULO}    AVENGERS
