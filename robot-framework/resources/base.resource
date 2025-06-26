*** Settings ***
Library        Browser
Library        libs/database.py

Resource       env.resource
Resource       pages/components/Alert.resource
Resource       pages/SignupPage.resource
Resource       pages/Login.resource

*** Keywords ***
Start Session
    New Browser    browser=chromium    headless=${False}
    New Page       ${BASE_URL}