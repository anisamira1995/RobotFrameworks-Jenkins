*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Put_information with comment
    select from list by label    xpath=//*[@id="combo_facility"]    Hongkong CURA Healthcare Center
    click element    xpath=//*[@id="chk_hospotal_readmission"]
    click element    xpath=//*[@id="radio_program_medicaid"]
    input text    xpath=//*[@id="txt_comment"]    testing3

Put_Date
    click element    xpath=//section[@id="appointment"]/div/div/form/div[4]/div/div/div/span
    click element    xpath=(.//*[normalize-space(text()) and normalize-space(.)="Sa"])[1]/following::td[25]
    click element    xpath=//section[@id="appointment"]/div/div/form/div[4]/div/div/div/span

Submit_n_validation
    click element    xpath=//*[@id="btn-book-appointment"]
    element text should be    xpath=//*[@id="summary"]/div/div/div[1]/h2    Appointment Confirmation

Put_comment_agg1 ${Job}
    select from list by label    xpath=//*[@id="combo_facility"]    Hongkong CURA Healthcare Center
    click element    xpath=//*[@id="chk_hospotal_readmission"]
    click element    xpath=//*[@id="radio_program_medicaid"]
    input text    xpath=//*[@id="txt_comment"]    ${Job}

Put_comment_agg2 "${Job}"
    select from list by label    xpath=//*[@id="combo_facility"]    Hongkong CURA Healthcare Center
    click element    xpath=//*[@id="chk_hospotal_readmission"]
    click element    xpath=//*[@id="radio_program_medicaid"]
    input text    xpath=//*[@id="txt_comment"]    ${Job}

Put_comment_agg3
    [Arguments]    ${Job}
    select from list by label    xpath=//*[@id="combo_facility"]    Hongkong CURA Healthcare Center
    click element    xpath=//*[@id="chk_hospotal_readmission"]
    click element    xpath=//*[@id="radio_program_medicaid"]
    input text    xpath=//*[@id="txt_comment"]    ${Job}

Put_information_dd ${Faci} and ${Job}
    select from list by label    xpath=//*[@id="combo_facility"]    ${Faci}
    click element    xpath=//*[@id="chk_hospotal_readmission"]
    click element    xpath=//*[@id="radio_program_medicaid"]
    input text    xpath=//*[@id="txt_comment"]    ${Job}
