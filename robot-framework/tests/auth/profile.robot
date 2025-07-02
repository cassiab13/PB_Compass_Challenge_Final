*** Settings ***
Documentation            Cenários de testes do profile de usuário
Resource                 ../../resources/base.resource
Library                  Collections
Test Setup               Start Session
Test Teardown            Take Screenshot

*** Test Cases ***

Should show users database
    [Tags]         AUTH-004    CIN23
    ${user}        Create Dictionary    
    ...            name=UserProfile
    ...            email=userprofile@gmail.com 
    ...            password=new123456
    
    Go to signup Page
    Submit signup form                 ${user}

    Click on profile
    Submit login    ${user}
    Click on profile
    
    ${nome_input}=       Get Property     css=#name         value
    ${user_name}=        Get From Dictionary      ${user}           name
    Should Be Equal      ${nome_input}            ${user_name}
    Remove user from database    ${user}[email]
Should update user name
    [Tags]         AUTH-004    CIN24
    ${user}        Create Dictionary    
    ...            name=UserToUpdate
    ...            email=usertoupdate@gmail.com 
    ...            password=new123456
    
    Reset user in database    ${user}
    Go to login page
    Submit login                 ${user}
    Click on profile
    Fill profile name and save    String
    Modal should contains         Perfil atualizado com sucesso
    Wait For Elements State       ${MODAL_OK_BUTTON}   visible    5s
    Click                         ${MODAL_OK_BUTTON}
    Remove user from database    ${user}[email]
Element email should be disable
    [Tags]    AUTH-004    CIN25
    ${user}        Create Dictionary    
    ...            name=UserNormal
    ...            email=usernormal@gmail.com 
    ...            password=new123456
    
    Reset user in database       ${user}
    Go to login page
    Submit login                 ${user}
    Click on profile
    ${is_disabled}=    Get Attribute    css=#email    disabled
    Should Be Empty    ${is_disabled}
    Remove user from database    ${user}[email]
Should not update user with empty name
    [Tags]         AUTH-004    CIN29
    ${user}        Create Dictionary    
    ...            name=UserToUpdate
    ...            email=usertoupdate@gmail.com 
    ...            password=new123456
    
    Reset user in database       ${user}
    Go to login page
    Submit login                 ${user}
    Click on profile
    Fill profile name and save    ''
    
    Wait For Elements State       ${PROFILE_MESSAGE}   visible    5s
    Remove user from database    ${user}[email]