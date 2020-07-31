*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/resources.robot

Suite Setup    Open welcome screen
Suite Teardown    Close the browser
*** Variables ***
${Url}      https://c6.avaamo.com/web_channels/444588bc-92fe-477f-87c1-88a92946346a/demo.html?theme=avm-messenger&banner=true&demo=true&banner_text=%20&banner_title=This%20is%20how%20the%20chat%20agent%20shows%20up
${browser}      chrome
${policy number}        M0012345
${vehicle registration number}      HR21AB1010
${phone number}     9857689500
${email address}        sree@gmail.com
*** Test Cases ***
Launch IRA
    click element    ${ira}
    set selenium implicit wait      5s
    click element    ${getstarted}
    select frame    ${selectframe}
    sleep    5s
    click element       ${switchtotype}
Question 1: Ask ira to renew
    Renew policy    ${policy number}     ${vehicle registration number}  ${phone number}     ${email address}

Question 2:
    What are the different modes of payment to purchase travel insurance?

Question 3:
    how health insurance differs from life insurance?

Question 4:
    How do I contact you?

Question 5:
    how to intimate a claim?

