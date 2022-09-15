*** Settings ***
Test Setup        Open_n_login
Test Teardown     close browser
Test Template     Make_Appoiment
Library           SeleniumLibrary
Resource          ../Test_resources/open_n_login.robot
Resource          ../Test_resources/make_appoinment_r.robot

*** Test Cases ***
Appoinment_1
    Hongkong CURA Healthcare Center    comment 1

Appoinment_2
    Tokyo CURA Healthcare Center    comment 2

*** Keywords ***
Make_Appoiment
    [Arguments]    ${facility}    ${comment}
    select from list by label    xpath=//*[@id="combo_facility"]    ${facility}
    click element    xpath=//*[@id="chk_hospotal_readmission"]
    click element    xpath=//*[@id="radio_program_medicaid"]
    click element    xpath=//section[@id="appointment"]/div/div/form/div[4]/div/div/div/span
    click element    xpath=(.//*[normalize-space(text()) and normalize-space(.)="Sa"])[1]/following::td[25]
    input text    xpath=//*[@id="txt_comment"]    ${comment}
    sleep    3
    click element    xpath=//*[@id="btn-book-appointment"]
    element text should be    xpath=//*[@id="summary"]/div/div/div[1]/h2    Appointment Confirmation
    #Terminal: robot Test_suite/3_make_appoiment_dd.robot
