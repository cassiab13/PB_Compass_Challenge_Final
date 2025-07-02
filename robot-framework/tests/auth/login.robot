*** Settings ***
Documentation            Cenários de testes do login de usuário
Resource                 ../../resources/base.resource

Test Setup               Start Session
Test Teardown            Take Screenshot

*** Test Cases ***
Should login successfully
    [Tags]    AUTH-002    CIN10
    ${user}        Create Dictionary    
    ...            name=NewUserLogin
    ...            email=newuserlogin@gmail.com 
    ...            password=new123456
    
    Go to signup Page
    Submit signup form           ${user}
    Go to login page
    Submit login                 ${user}
    Alert should be              Login realizado com sucesso
    Remove user from database    ${user}[email]
Should not login incorrect password
    [Tags]    AUTH-002    CIN11
    ${user}        Create Dictionary    
    ...            name=NewUserLogin
    ...            email=newuserlogin@gmail.com 
    ...            password=new123456
    
    ${wrong_password}        Create Dictionary
    ...            name=NewUserLogin    
    ...            email=newuserlogin@gmail.com 
    ...            password=wrongpassword 
    
    Go to signup Page
    Submit signup form           ${user}
    Go to login page
    Submit login                 ${wrong_password}
    Remove user from database    ${user}[email]
    Remove user from database    ${wrong_password}[email]