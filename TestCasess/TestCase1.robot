*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/


*** Test Cases ***
LoginTest
    open browser    ${url}   ${browser}
    loginToApplication
    close browser




*** Keywords ***
loginToApplication
    Maximize Browser Window
    click link    xpath://a[text()='Log in']
    sleep    1s
    input text    id:Email  pitapurammlagaritaluka@gmail.com
    sleep    1s
    input text    id:Password   Test@123
    ${logintext}       get text    xpath://button[text()='Log in']
    log to console    login values is: ${logintext}
    click element    xpath://button[text()='Log in']
    sleep    1s




