*** Settings ***
Library    SeleniumLibrary
Variables  ../PageObjects/Locators.py
*** Keywords ***
Open my Browser
    [Arguments]    ${Siteurl}   ${Browser}
    open browser   ${Siteurl}   ${Browser}
    maximize browser window
Enter Username
    [Arguments]    ${username}
    input text    ${txt_loginUserName}      ${username}
Enter Password
    [Arguments]    ${password}
    input text    ${txt_loginPassword}      ${password}
Click Submit
    click element    ${btn_submit}