*** Settings ***
Documentation            Cenários de testes do logout de usuário
Resource                 ../../resources/base.resource
Library                  ../../resources/libs/database.py
Test Setup               Start Session
Test Teardown            Take Screenshot

*** Test Cases ***
Should display logout button after successful login
    [Tags]    AUTH-003    CIN17    UI

    ${user}=    Create Dictionary
    ...         name=LoginUser
    ...         email=login@test.com
    ...         password=senha123

    Reset user in database    ${user}
    Go to login page
    Submit login              ${user}
    Wait For Elements State   css=.btn-logout    visible    5s
Should logout successfully
    [Tags]    AUTH-003    CIN18
    ${user}        Create Dictionary    
    ...            name=UserLogout
    ...            email=userLogout@gmail.com 
    ...            password=new123456
    
    Reset user in database       ${user}
    Go to login page
    Submit login                 ${user}
    Logout user
    Verify Login Page
    Token should not exist in local storage

Should not access protected routes after logout
    [Tags]    AUTH-003    CIN19
    ${user}        Create Dictionary    
    ...            name=UserLogout
    ...            email=userLogout@gmail.com 
    ...            password=new123456
    
    Reset user in database       ${user}
    Go to login page
    Submit login                 ${user}
    Go to profile page
    Verify Login Page

Should hide user menu links after logout
    [Tags]    AUTH-003    CIN21
    ${user}=    Create Dictionary
    ...         name=MenuUser
    ...         email=menuuser@test.com
    ...         password=senha123

    Remove user from database    ${user}[email]
    Go to signup Page
    Submit signup form           ${user}

    Wait For Elements State      css=a[href="/reservations"]    visible    5s
    Wait For Elements State      css=a[href="/profile"]         visible    5s

    Logout user

    Wait For Elements State      css=a[href="/reservations"]    hidden    5s
    Wait For Elements State      css=a[href="/profile"]         hidden    5s
