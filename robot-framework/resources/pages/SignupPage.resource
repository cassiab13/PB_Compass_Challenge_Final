*** Settings ***
Documentation        Elementos e ações na página de cadastrar

Library              Browser
Resource             ../base.resource
*** Keywords ***
Go to signup Page
    Go To                      ${BASE_URL}/register
    Wait For Elements State    xpath=//p[contains(text(), 'Crie sua conta para reservar ingressos')]    visible    5

Submit signup form
    [Arguments]    ${user}

    Fill Text    css=#name                ${user}[name]
    Fill Text    css=#email               ${user}[email]
    Fill Text    css=#password            ${user}[password]
    Fill Text    css=#confirmPassword     ${user}[password]

    Click        css=button[type=submit] >> text=Cadastrar