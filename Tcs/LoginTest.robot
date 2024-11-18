*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeyWords.robot

*** Variables ***
${siteurl}      https://www.demo.guru99.com/test/newtours/
${browser}      chrome
${user}     tutorial
${pwd}      tutorial

*** Test Cases ***
LoginTC
    Open my Browser     ${siteurl}      ${browser}
    Enter Username      ${user}
    Enter Password      ${pwd}
    Click Submit

