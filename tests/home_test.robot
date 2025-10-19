*** Settings ***
Documentation    Arquivo com os casos de testes da funcionalidade home

Resource            ../resources/keywords/home_keyword.robot

Test Teardown       Encerrar sessão


*** Test Cases ***
Cenario: Apresentar a tela Home AVENGERS
    [Tags]    home
    Dado que eu acesse o aplicativo Training Wheels Protocol em um dispositivo mobile Android
    E que eu esteja na tela inicial QA Ninja Training Wheels Protocol Mobile Version
    Quando eu clicar no botão COMEÇAR
    Então deverá apresentar a tela Home AVENGERS
