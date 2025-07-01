*** Settings ***
Documentation            Cenários de testes do profile de usuário
Resource                 ../../resources/base.resource
Library                  ../../resources/libs/database.py
Library                  Collections
Test Setup               Start Session
Test Teardown            Take Screenshot

*** Test Cases ***

Sessions should be available
    [Tags]        MOVIE-002    CIN48

    Go to movie page
    Click on details movie
    Session list exists

Should access seat reservation from session
    [Tags]        MOVIE-002    CIN49

    Go to movie page
    Click on details movie
    Session list exists
    Click on reserve seats

Should access infos movie
    [Tags]        MOVIE-002    CIN109

    Go to movie page
    Click on details movie
    Verify infos from movie