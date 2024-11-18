*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://www.hyrtutorials.com/p/basic-controls.html


*** Test Cases ***
Testing Radio Buttons and Check Boxes
    ${time}=    get selenium timeout
    log to console    time out is: ${time}
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium timeout    10s
    wait until page contains    Basic Controls in HTML
    ### Check box ###
    select radio button    gender       femalerb
    ### Check box ###
    select checkbox    englishchbx
    select checkbox    hindichbx
    unselect checkbox   englishchbx

    ${time}=    get selenium timeout
    log to console    time out is: ${time}

    close browser

*** Keywords ***

