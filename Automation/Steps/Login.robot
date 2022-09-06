*** Settings ***
Documentation                       Login MileApp Test Case
Library                             SeleniumLibrary
Resource                            ../Steps/Base.robot
Resource                            ../Resources/Login_Keyword.robot
Suite Setup                         Base.Open Firefox Browser
Suite Teardown                      Close Browser

*** Variables ***
${NameOrganization}                 testonboard
${invalidEmail-Username}            devy
${unregPassword}                    12345678

*** Test Cases ***
User should be able to input Name Organization when login
    [Documentation]                 Test for user should be able to input Name Organization when login
    Verify Login section appears
    Sleep                           5s 
    Click Name Organization
    Input Name Organization         ${NameOrganization} 
    Sleep                           3s       

User login with invalid email and unregistered password
    [Documentation]                 Test to login with invalid email and unregistered password
    Verify Login section appears
    Sleep                           5s
    Click Name Organization
    Input Name Organization         ${NameOrganization}   
    Sleep                           5s   
    Click Email or Username
    Input Email or Username         ${invalidEmail-Username}
    Click Password
    Input Password                  ${unregPassword}    
    Click Login button              
    Sleep                           3s   
    Verify login failed             error_type=MassageLoginFailed
    Sleep                           3s 


