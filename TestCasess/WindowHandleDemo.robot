*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Handling Windows
    open browser    https://demo.automationtesting.in/Windows.html  chrome
    maximize browser window
    click link    xpath://a[text()='Open New Tabbed Windows ']