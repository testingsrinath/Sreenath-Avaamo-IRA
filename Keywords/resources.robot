*** Settings ***
Library    SeleniumLibrary
Variables    ../Elements/elements.py

*** Keywords ***
Open welcome screen
    open browser    ${Url}       ${browser}
    maximize browser window
Click on IRA
    click element    ${ira}
    set selenium implicit wait      5s
    ${Wtext}          get text    ${welcomemessage}
    [Return]       ${Wtext}
    log to console      The text present on the chabotbot is ${Wtext}

Enter chatbot
    click element    ${getstarted}
    select frame    ${selectframe}
    click element       ${switchtotype}
Verify greeting message and response
    input text    ${input_text}   Hi
    click element    ${click_send_button}
    sleep   10s
    ${response1}    get text    ${message}
    [Return]     ${response1}
    log to console    The response given by bot for Hi is ${response1}

Click menu options
    set selenium implicit wait    6s
    click element    ${menu_button_open}
    click element    ${start_over}
    set selenium implicit wait    5s

Download policy
    sleep   5s
    click element   ${download_motor_policy}
    sleep   5s
    click link    ${download_link}
    sleep   1s
    switch window       Test agent - IRA

Enter test bot
    sleep   5s
    select frame    ${selectframe}
    input text    ${input_text}       Test Bot
    click element    ${click_send_button}
Fill the form and submit
    input text    ${first_name}          Sreenath
    input text    ${address}    Address test
    click element    ${gender}
    click element    ${search_box}
    click element    ${veryoftern}
    click element    ${rate}
    scroll element into view    ${Click_submit}
    click button       ${Click_submit}
    sleep   5s

Input New test
    input text    ${input_text}     New Test
    click element    ${click_send_button}
Click on google
    click element    ${clickgoogle}
    sleep   3s
    click element    ${closegoogle}
Click on call
    sleep   3s
    click element    ${call}
    sleep   5s
    switch window       Test agent - IRA

Renew policy
    [Arguments]    ${policy number}     ${vehicle registration number}  ${phone number}     ${email address}
    input text    ${input_text}     I need to renew my motor policy
    click element    ${click_send_button}
    wait until page contains    8-digit policy number       20s
    input text    ${input_text}     ${policy number}
    click element    ${click_send_button}
    wait until page contains    Can you help me with your vehicle registration number?      10s
    input text    ${input_text}     ${vehicle registration number}
    click element    ${click_send_button}
    wait until page contains    Can you help me with your registered phone number?      10s
    input text    ${input_text}     ${phone number}
    click element    ${click_send_button}
    wait until page contains    Can you help me with your email address?        10s
    input text    ${input_text}     ${email address}
    click element    ${click_send_button}
    sleep   5s
    click element    ${yes}
    current frame should contain    Your policy will be renewed..Have a great day

What are the different modes of payment to purchase travel insurance?
    sleep   5s
    input text      ${input_text}     What are the different modes of payment to purchase travel insurance?
    click element    ${click_send_button}


How do I contact you?
    sleep   5s
    input text    ${input_text}     How do I contact you?
    click element    ${click_send_button}
    sleep   3s

how to intimate a claim?
    sleep   3s
    input text    ${input_text}     how to intimate a claim?
    click element    ${click_send_button}
    sleep   5s

how health insurance differs from life insurance?
    sleep    3s
    input text    ${input_text}     how health insurance differs from life insurance?
    click element    ${click_send_button}
    sleep   5s
Close the browser
    close browser