*** Settings ***
Test Setup        login_setup
Test Teardown     close browser
Library           SeleniumLibrary

*** Variables ***
${comment}        testing2

*** Test Cases ***
Make Appoiment
    select from list by label    xpath=//*[@id="combo_facility"]    Hongkong CURA Healthcare Center
    click element    xpath=//*[@id="chk_hospotal_readmission"]
    click element    xpath=//*[@id="radio_program_medicaid"]
    click element    xpath=//section[@id="appointment"]/div/div/form/div[4]/div/div/div/span
    click element    xpath=(.//*[normalize-space(text()) and normalize-space(.)="Sa"])[1]/following::td[25]
    click element    xpath=//section[@id="appointment"]/div/div/form/div[4]/div/div/div/span
    Put ${comment}
    click element    xpath=//*[@id="btn-book-appointment"]
    Sleep    5
    element text should be    xpath=//*[@id="summary"]/div/div/div[1]/h2    Appointment Confirmation
    #Terminal: robot Test_suite/1_make_appoiment.robot

*** Keywords ***
login_setup
    open browser    https://katalon-demo-cura.herokuapp.com/    chrome
    click element    xpath=//*[@id="btn-make-appointment"]
    input text    xpath=//*[@id="txt-username"]    John Doe
    input text    xpath=//*[@id="txt-password"]    ThisIsNotAPassword
    click element    xpath=//*[@id="btn-login"]

Put ${comment_k}
    input text    xpath=//*[@id="txt_comment"]    ${comment_k}
