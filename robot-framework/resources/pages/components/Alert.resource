*** Settings ***
Documentation        Ações e elementos da camada do componente de mensagens de alerta
Library              Browser

*** Keywords ***
Alert should be 
    [Arguments]    ${expected_text}

    Wait For Elements State    css=.alert-content >> text=${expected_text}    
    ...                        visible    5