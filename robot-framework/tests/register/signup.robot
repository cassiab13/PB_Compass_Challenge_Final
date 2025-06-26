*** Settings ***
Documentation            Cenários de testes do cadastro de usuário
Resource                 ../../resources/base.resource

Test Setup               Start Session
Test Teardown            Take Screenshot

*** Test Cases ***
Should signup a new user
    [Tags]         AUTH-001    CIN1
    ${user}        Create Dictionary    
    ...            name=NewUser
    ...            email=newuser@gmail.com 
    ...            password=new123456
    
    Remove user from database    ${user}[email]
    Go to signup Page
    Submit signup form    ${user}

Should not signup same email
    [Tags]        AUTH-001    CIN2

    ${user}        Create Dictionary    
    ...            name=NewUser
    ...            email=newuser@gmail.com 
    ...            password=new123456
    
    Remove user from database    ${user}[email]
    Insert user into database    ${user}

    Go to signup Page
    Submit signup form    ${user}
    Alert should be       User already exists

Should not signup invalid email
    [Tags]        AUTH-001    CIN3

    ${user}        Create Dictionary    
    ...            name=NewUser
    ...            email=newusergmail@com 
    ...            password=new123456
    
    Remove user from database    ${user}[email]
    Insert user into database    ${user}

    Go to signup Page
    Submit signup form    ${user}
    Alert should be       Validation Failed
Should not signup short password
    [Tags]        AUTH-001    CIN4

    @{password_list}    Create List    a    ab    abc    abcd    abcde
    
    FOR    ${password}    IN    @{password_list}
            ${user}        Create Dictionary    
    ...     name=NewUser
    ...     email=newuser@gmail.com 
    ...     password=${password}
    Remove user from database    ${user}[email]
    Go to signup page
    Submit signup form    ${user}
    Alert should be       Validation Failed
    END