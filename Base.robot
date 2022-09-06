*** Settings ***
Documentation       Base releted keywords
Library             SeleniumLibrary

*** Variables ***
${LOGIN_URL}     https://taskdev.mile.app/login

*** Keywords ***
Open Firefox Browser
    [Documentation]     Keyword to open browser Firefox
    Open Browser        browser=Firefox         url=${LOGIN_URL}