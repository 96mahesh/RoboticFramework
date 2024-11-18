*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
HandlingAlerts
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    click element   xpath://button[text()='Alert']
    sleep    3s
    #alert should be present    I am an alert box!
    ${alert_Text}   handle alert    accept
    log to console    altert text msg is: ${alert_Text}
   # handle alert    leave
    sleep    3s
    click element   xpath://button[text()='Confirm Box']
    sleep    3s
    alert should be present  Press a button!
    #handle alert    accept

    sleep    3s
    click element   xpath://button[text()='Prompt']
    sleep    3s
    ${alert}    input text into alert    mahesh
    log to console    alert input text is: ${alert}
    sleep    3s
   # handle alert    accept
    ${alert_msg} =      get text    id:demo
    log to console    alert msg is : ${alert_msg}



