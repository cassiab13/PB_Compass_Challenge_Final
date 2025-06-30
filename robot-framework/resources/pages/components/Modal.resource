*** Settings ***
Documentation        Ações e elementos da camada do componente de mensagens de alerta
Resource             ../../base.resource
*** Keywords ***
Modal should contains
    [Arguments]    ${expected_text}
    Wait For Elements State    .success-modal-overlay    attached    timeout=5s
    ${text}=    Get Text    css=.success-modal-overlay p
    Should Be Equal    ${text}    ${expected_text}