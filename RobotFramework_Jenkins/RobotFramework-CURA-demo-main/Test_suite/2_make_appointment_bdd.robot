*** Settings ***
Test Setup        Open_n_login
Test Teardown     close browser
Library           SeleniumLibrary
Resource          ../Test_resources/open_n_login.robot
Resource          ../Test_resources/make_appoinment_r.robot

*** Variables ***
${comment}        comment_agg1

*** Test Cases ***
Make Appoiment
    When Put_information with comment
    And Put_Date
    Then Submit_n_validation

Make Appoiment with Arguments 1
    When Put_comment_agg1 ${comment}
    And Put_Date
    Then Submit_n_validation

Make Appoiment with Arguments 2
    When Put_comment_agg2 "comment_agg_2"
    And Put_Date
    Then Submit_n_validation

Make Appoiment with Arguments 3
    When Put_comment_agg3    comment_agg_3
    And Put_Date
    Then Submit_n_validation
