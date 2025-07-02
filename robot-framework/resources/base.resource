*** Settings ***
Library        Browser
Library        libs/database.py

Resource       env.resource
Resource       variables.resource
Resource       pages/components/Alert.resource
Resource       pages/components/Modal.resource
Resource       pages/components/Elements.resource
Resource       pages/SignupPage.resource
Resource       pages/Login.resource
Resource       pages/LoggedUserPage.resource
Resource       pages/Profile.resource
Resource       pages/Home.resource
Resource       pages/Movie.resource
Resource       pages/Sessions.resource
Resource       pages/Reservation.resource
Resource       pages/Checkout.resource

*** Keywords ***
Start Session
    New Browser    browser=chromium    headless=${False}
    New Page       ${BASE_URL}