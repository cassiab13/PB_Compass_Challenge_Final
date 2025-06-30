*** Settings ***
Documentation        Ações e elementos da camada do componente de mensagens de alerta
Library              Browser

*** Keywords ***
Alert should be 
    [Arguments]    ${expected_text}

    Wait For Elements State    css=.alert-content >> text=${expected_text}    
    ...                        visible    5
Fast Alert should be
    [Arguments]    ${expected_text}
    Wait For Elements State    .alert-content    attached    timeout=2s
    ${text}=    Get Text    .alert-content
    Should Be Equal    ${text}    ${expected_text}





