*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
HandlingFrames
    open browser    https://www.hyrtutorials.com/p/frames-practice.html     chrome
    maximize browser window
    select frame    frm1
    ${course_List}=     get text    id:course
    log to console      ${course_List}
    unselect frame

    select frame    frm2
    input text    id:firstName      Mahesh
    input text    id:lastName       Rampatruni
    select checkbox    englishchbx
    input text    id:email      mahirampo@gmail.com
    input text    id:password   Mahesh@96
    click element    id:registerbtn
    select radio button    gender      malerb
    sleep    5s
    unselect frame

    select frame    frm3

    select frame    frm1
    ${course_List}=     get text    id:course
    log to console      ${course_List}
    unselect frame

    select frame    frm2
    input text    id:firstName      Mahesh
    input text    id:lastName       Rampatruni
    select checkbox    englishchbx
    input text    id:email      mahirampo@gmail.com
    input text    id:password   Mahesh@96
    click element    id:registerbtn
    select radio button    gender      malerb
    sleep    5s
    unselect frame


