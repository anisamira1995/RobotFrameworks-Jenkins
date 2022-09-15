*** Settings ***
Library           SeleniumLibrary
Resource          ../Test_resources/open_n_login.robot
Test Setup        Open_n_login
Test Teardown     close browser

*** Test Cases ***
Make Appoiment
        select from list by label       xpath=//*[@id="combo_facility"]                                                             Hongkong CURA Healthcare Center
        click element                   xpath=//*[@id="chk_hospotal_readmission"]
        click element                   xpath=//*[@id="radio_program_medicaid"]
        click element                   xpath=//section[@id="appointment"]/div/div/form/div[4]/div/div/div/span
        click element                   xpath=(.//*[normalize-space(text()) and normalize-space(.)="Sa"])[1]/following::td[25]
        click element                   xpath=//section[@id="appointment"]/div/div/form/div[4]/div/div/div/span
        input text                      xpath=//*[@id="txt_comment"]                                                                testing2
        click element                   xpath=//*[@id="btn-book-appointment"]
        Sleep                           5
        element text should be          xpath=//*[@id="summary"]/div/div/div[1]/h2                                                   Appointment Confirmation

#Terminal: robot Test_suite/1_make_appoiment.robot