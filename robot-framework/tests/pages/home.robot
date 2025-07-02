*** Settings ***
Documentation            Cenários de testes do profile de usuário
Resource                 ../../resources/base.resource
Library                  ../../resources/libs/database.py
Library                  Collections
Test Setup               Start Session
Test Teardown            Take Screenshot

*** Test Cases ***

Should check if list of movies appear in grid form 
    [Tags]         MOVIE-001    CIN39
    Element Should Be a Grid    .movie-grid


Should check duration and release
    [Tags]         MOVIE-001    CIN42 
    Check duration and release data for each Film

Should check if list of movies appear in grid form for authenticated user
    [Tags]        MOVIE-001    CIN39

    ${user}        Create Dictionary    
    ...            name=HomeUser
    ...            email=homeuser@gmail.com 
    ...            password=new123456
    
    Go to signup Page
    Submit signup form    ${user}
    Element Should Be a Grid    .movie-grid
    Remove user from database    ${user}[email]
Should check duration and release for authenticated user
    [Tags]         MOVIE-001    CIN42 
    
    ${user}        Create Dictionary    
    ...            name=ReleaseUser
    ...            email=releaseuser@gmail.com 
    ...            password=new123456
    
    Go to signup Page
    Submit signup form    ${user}
    Check duration and release data for each Film
    Remove user from database    ${user}[email]

Should check if card info is clickable
    [Tags]        MOVIE-001    CIN43
    Check if movie card is clickable