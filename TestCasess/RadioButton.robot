*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://testautomationpractice.blogspot.com/


*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    2

    ### Check box ###
    select radio button    gender       male
    ### Check box ###
    select checkbox    sunday
    select checkbox    wednesday
    unselect checkbox    sunday
    close browser

*** Keywords ***

