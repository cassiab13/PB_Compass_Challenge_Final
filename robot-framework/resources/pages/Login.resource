*** Settings ***
Documentation        Elementos e ações na página de login

Resource             ../base.resource

*** Keywords ***
Go to login page
    Go To                      ${BASE_URL}/login
    Wait For Elements State    ${LOGIN_MESSAGE}    visible    5
Submit login
    [Arguments]    ${user}
    Fill Text    css=#email        ${user}[email]
    Fill Text    css=#password     ${user}[password]

    Click        ${LOGIN_BUTTON}

Verify Login Page
    Wait For Elements State    ${LOGIN_MESSAGE}    visible    5
