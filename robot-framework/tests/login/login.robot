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
    
    Remove user from database    ${user}[email]
    Go to signup Page
    Submit signup form           ${user}
    Sleep    5
    Go to login page
    Submit login                 ${user}
    Alert should be              Login realizado com sucesso
    Sleep    5