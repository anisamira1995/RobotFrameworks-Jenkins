*** Settings ***
Test Setup        Open_n_login
Test Teardown     close browser
Test Template     Make_Appoiment
Library           SeleniumLibrary
Resource          ../Test_resources/open_n_login.robot
Resource          ../Test_resources/make_appoinment_r.robot
Library           DataDriver    list_appoinment.xlsx    sheet_name=Sheet1

*** Test Cases ***
appoinment
    ${facility2}    ${comment2}

*** Keywords ***
Make_Appoiment
    [Arguments]    ${facility2}    ${comment2}
    When Put_information_dd ${facility2} and ${comment2}
    And Put_Date
    Then Submit_n_validation
