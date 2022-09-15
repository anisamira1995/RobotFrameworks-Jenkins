*** Settings ***
Library           Selenium2Library
Library           LambdaTestStatus.py

*** Variables ***
${platform}       MacOS Ventura
${version}        ${EMPTY}
${browserName}    Chrome
${ROBOT_BROWSER}    Chrome
@{_tmp}           browserName: ${browserName},    platform: ${platform},    version: ${version},    visual: True,    network: False,    console: False,    name: CURA Lambda Test
${BROWSER}        ${ROBOT_BROWSER}
${CAPABILITIES}    ${EMPTY.join(${_tmp})}
${REMOTE_URL}     http://musyarus:2CGqAOKMJ7poROzfxycA4M8J69SAe2HFZUmDEAoJJY9F5aDMIW@hub.lambdatest.com/wd/hub
${TIMEOUT}        3000

*** Keywords ***
Open test browser
    [Timeout]    ${TIMEOUT}
    Open browser    https://katalon-demo-cura.herokuapp.com/    browser=${BROWSER}    remote_url=${REMOTE_URL}    desired_capabilities=${CAPABILITIES}

Close test browser
    Run keyword if    '${REMOTE_URL}' != ''    Report Lambdatest Status    ${TEST_NAME}    ${TEST_STATUS}
    Close all browsers
