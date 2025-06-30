*** Settings ***
Documentation        Elementos e ações na página de login

Resource             ../base.resource

*** Keywords ***
Go to profile page
    Go To    ${BASE_URL}/profile

Click on profile
    Click    ${PROFILE_LINK}

Fill profile name and save
    [Arguments]    ${name}
    Fill Text      ${INPUT_NAME}    ${name}
    Click          ${SALVAR_ALTERACOES_BTN}

Fill profile email and save
    [Arguments]    ${email}
    Fill Text      ${INPUT_EMAIL}    ${email}
    Click          ${SALVAR_ALTERACOES_BTN}