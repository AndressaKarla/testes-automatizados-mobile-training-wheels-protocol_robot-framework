*** Settings ***
Resource        ../base_spec/keywords/base_keyword.robot
Resource        ./keywords/tela_inicial_comecar_keyword.robot

Test Teardown   Encerrar sessão

*** Test Cases ***
Cenario: Validar clicar no botão COMEÇAR
	Dado que eu acesse o aplicativo Training Wheels Protocol em um dispositivo mobile Android  
	E que eu esteja na tela inicial QA Ninja Training Wheels Protocol Mobile Version
    Quando eu clicar no botão COMEÇAR
	Então deverá apresentar a tela Home AVENGERS              