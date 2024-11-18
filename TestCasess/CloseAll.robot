*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MyTestcase
    open browser    https://demowebshop.tricentis.com/register      chrome
    maximize browser window

    open browser    https://demowebshop.tricentis.com/register      chrome
    maximize browser window

    #close browser
    close all browsers