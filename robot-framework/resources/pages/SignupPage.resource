*** Settings ***
Documentation        Elementos e ações na página de cadastrar

Resource             ../base.resource
*** Keywords ***
Go to signup Page
    Go To                      ${BASE_URL}/register
    Wait For Elements State    ${SUBMIT_MESSAGE}   visible    5

Submit signup form
    [Arguments]    ${user}

    Fill Text    css=#name                ${user}[name]
    Fill Text    css=#email               ${user}[email]
    Fill Text    css=#password            ${user}[password]
    Fill Text    css=#confirmPassword     ${user}[password]

    Click        ${SUBMIT_BUTTON}