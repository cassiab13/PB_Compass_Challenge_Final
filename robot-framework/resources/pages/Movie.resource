*** Settings ***
Documentation        Ações e elementos da página Movies
Resource             ../base.resource
Library              Browser

*** Keywords ***
Go to movie page
    Go To    ${BASE_URL}/movies

Click on details movie
    Click    xpath=//*[@id="root"]/main/div/div[2]/div[1]/div[2]/a
Session list exists
    ${has_session}=    Run Keyword And Return Status    Browser.Get Element   .sessions-list
        Should Be True    ${has_session}    Este card não possui .sessions-list

Click on reserve seats 
    Click    ${SELECIONAR_ASSENTOS_BTN}

Verify infos from movie
    ${has_movie_meta}=    Run Keyword And Return Status    Browser.Get Element   .movie-meta
        Should Be True    ${has_movie_meta}    Este card não possui .movie-meta

    ${has_movie_genres}=    Run Keyword And Return Status    Browser.Get Element   .movie-genres
        Should Be True    ${has_movie_genres}    Este card não possui .movie-genres
    
    ${has_movie_director}=    Run Keyword And Return Status    Browser.Get Element   .movie-director
        Should Be True    ${has_movie_director}    Este card não possui .movie-director
    
    ${has_movie_synopsis}=    Run Keyword And Return Status    Browser.Get Element   .movie-synopsis
        Should Be True    ${has_movie_synopsis}    Este card não possui .movie-synopsis