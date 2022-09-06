*** Settings ***
Documentation           Login releted keyword
Variables               Locator_Login.yaml

*** Variables ***
${LOGIN_URL}                            https://taskdev.mile.app/login
${NameOrg}                              a
${Email_Username}                       b
${Pass}                                 11111111

*** Keywords ***

Verify Login section appears
    [Documentation]                     Keyword to verify Login section appears
    Wait Until Element Is Visible       ${Logo}
    Element Should Be Visible           ${FormLogin}

Click Name Organization
    [Documentation]                     Keyword to click Name Organization
    Click Element                       ${inputNameOrg}

Input Name Organization
    [Documentation]                     Keyword to input Name Organization
    [Arguments]                         ${NameOrg}
    Input Text                          ${inputNameOrg}              ${NameOrg}
    Press Keys                          None                         ENTER 


Click Email or Username
    [Documentation]                     Keyword to click Email or Username
    #Wait Until Element Is Visible       ${loading}
    Element Should Be Visible           ${verEUfield}
    Element Should Be Visible           ${verInputEU}
    Element Should Be Visible           ${inputEmail-Username}
    Click Element                       ${inputEmail-Username}

Input Email or Username 
    [Documentation]                     Keyword to input Email or Username
    [Arguments]                         ${Email_Username}
    Input Text                          ${inputEmail-Username}      ${Email_Username}

Click Password
    [Documentation]                     Keyword to click Password
    Click Element                       ${inputPass}

Input Password
    [Documentation]                     Keyword to click Password
    [Arguments]                         ${Pass}
    Input Text                          ${inputPass}                ${Pass}

Click Login button
    [Documentation]                     Keyword to click login button
    Click button                        ${buttonLogin}

Verify login failed
    [Documentation]                 Keyword to verify login failed
    [Arguments]                     ${error_type}
    &{all_error_type}               Create Dictionary       MassageLoginFailed=MassageLoginFailed
    Element Should Be Visible                               ${${all_error_type.${error_type}}_errorMessage_login}
