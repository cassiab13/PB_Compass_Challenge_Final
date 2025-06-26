*** Settings ***
Documentation        Elementos e ações na página de login

Library              Browser
Library    FakerLibrary
Resource             ../base.resource

*** Keywords ***
Go to login page
    Go To                      ${BASE_URL}/login
    Wait For Elements State    xpath=//p[contains(text(), 'Entre com suas credenciais para acessar sua conta')]    visible    5
Submit login
    [Arguments]    ${user}

    Fill Text    css=#email        ${user}[email]
    Fill Text    css=#password     ${user}[password]

    Click        css=button[type=submit] >> text=Entrar