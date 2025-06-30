*** Settings ***
Library        Browser
Library        libs/database.py

Resource       env.resource
Resource       variables.resource
Resource       pages/components/Alert.resource
Resource       pages/SignupPage.resource
Resource       pages/Login.resource
Resource       pages/LoggedUserPage.resource
Resource       pages/Profile.resource
Resource       pages/components/Modal.resource

*** Keywords ***
Start Session
    New Browser    browser=chromium    headless=${False}
    New Page       ${BASE_URL}