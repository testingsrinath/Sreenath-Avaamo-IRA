*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/resources.robot

Suite Setup    Open welcome screen
Suite Teardown    Close the browser
*** Variables ***
${Url}      https://c6.avaamo.com/web_channels/444588bc-92fe-477f-87c1-88a92946346a/demo.html?theme=avm-messenger&banner=true&demo=true&banner_text=%20&banner_title=This%20is%20how%20the%20chat%20agent%20shows%20up
${browser}      chrome
*** Test Cases ***
Launch IRA and Verify text and verify Greeting text
    Click on IRA
    Enter chatbot
    Verify greeting message and response

Verify download motor policy
    click menu options
    download policy

Verify input test bot and submit fomm
    Enter test bot
    Fill the form and submit

Verify input new test and very google and call links action
    input new test
    click on google
    click on call

