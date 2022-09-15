*** Settings ***
Library           SeleniumLibrary

*** Keywords ***

Open_n_login
    open browser    https://katalon-demo-cura.herokuapp.com/    chrome
    click element   xpath=//*[@id="btn-make-appointment"]
    input text      xpath=//*[@id="txt-username"]       John Doe
    input text      xpath=//*[@id="txt-password"]       ThisIsNotAPassword
    click element   xpath=//*[@id="btn-login"]

