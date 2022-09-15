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
    When Put_information_dd ${facility} and ${comment}
    And Put_Date
    Then Submit_n_validation
