*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://testautomationpractice.blogspot.com/

*** Test Cases ***
Handling DropDown and List
    open browser    ${url}      ${browser}
    maximize browser window
    set browser implicit wait    2

    ### Drop Down ###

    Wait Until Element Is Visible    country
    ${dropdown} =   get text    country



    ### List ###

    ${listdropdown} =   get text    colors
    log to console    dropdown list is : ${listdropdown}

    select from list by label   colors  Red
    select from list by label   colors  Blue

    unselect from list by label     colors  Red
*** Keywords ***
