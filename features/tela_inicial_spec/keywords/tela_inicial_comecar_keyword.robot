*** Settings ***
Resource    ../../base_spec/keywords/base_keyword.robot

*** Keywords ***
Então deverá apresentar a tela Home AVENGERS     
    Wait Until Element Is Visible    id=io.qaninja.android.twp:id/toolbarTitle 
    Element Text Should Be    id=io.qaninja.android.twp:id/toolbarTitle    AVENGERS         