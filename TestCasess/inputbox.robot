*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/
${ligin_buttom}     xpath://button[@class='button-1 login-button']


*** Test Cases ***
TestingInputBox
    open browser    ${url}  ${browser}
    maximize browser window
    title should be    nopCommerce demo store
    click link    xpath://a[text()='Log in']
    ${"email_text"}  set variable    id:Email
    element should be visible   ${"email_text"}
    element should be enabled    ${"email_text"}
    input text    ${"email_text"}   pitapurammlagaritaluka@gmail.com
    sleep    2
    clear element text    ${"email_text"}
    sleep    3
    input text    ${"email_text"}   pitapurammlagaritaluka@gmail.com
    sleep    3
    ${"pass_text"}  set variable    id:Password
    element should be visible   ${"pass_text"}
    element should be enabled    ${"pass_text"}
    input text    ${"pass_text"}   Text@123
    sleep    2
    clear element text    ${"pass_text"}
    sleep    3
    input text    ${"pass_text"}   Text@123
    sleep    3
    #${ligin_buttom}   set variable    xpath://button[@class='button-1 login-button']
    element should be visible   ${ligin_buttom}
    element should be enabled    ${ligin_buttom}
    sleep    3
    click element   ${ligin_buttom}
    sleep    3
    close browser





*** Keywords ***
