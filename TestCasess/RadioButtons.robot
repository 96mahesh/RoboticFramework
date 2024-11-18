*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://www.hyrtutorials.com/p/basic-controls.html


*** Test Cases ***
Testing Radio Buttons and Check Boxes
    ${speed}=      get selenium speed
    log to console    speed limit is: ${speed}
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    2

    ### Check box ###
    select radio button    gender       femalerb
    ### Check box ###
    select checkbox    englishchbx
    select checkbox    hindichbx
    unselect checkbox   englishchbx

    ${speed}=      get selenium speed
    log to console    speed limit is: ${speed}
    close browser

*** Keywords ***

