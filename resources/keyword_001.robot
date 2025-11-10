*** Settings ***

Library     Browser


*** Keywords ***
Initial Web Browser
    [Arguments]    ${url}
    New Browser    chromium    headless=false
    New Context    viewport={'width': 800, 'height': 600}
    Set Browser Timeout    20s
    New Page    ${url}

See Google Sheet Contain Tab Names Sequentially
    [Arguments]    @{gg_tab_names}
    [Documentation]    The result (log.html and console) Show Error:
    ...                Calling method 'end_test' of listener 'qase.robotframework.Listener' failed: TypeError: sequence item 2: expected str instance, int found
    ${tab_amount}     Get Length    ${gg_tab_names}
    ${ggsheet_title}    Get Text    //input[contains(@class,'docs-title-input')]
    ${ggsheet_url}    Get URL
    Log    Google Sheet Title: ${ggsheet_title}
    Log    URL: ${ggsheet_url}
    Wait For Elements State    (//*[@class="docs-sheet-tab-name"])[1]    stable
    Wait For Condition    Element Count    //*[@class="docs-sheet-tab-name"]    ==    ${tab_amount}    Tab in Google Sheet is missing. Expected: ${tab_amount}
    ${count}    Set Variable    1
    FOR    ${name}    IN    @{gg_tab_names}
        ${actual_name}    Get Text    (//*[@class="docs-sheet-tab-name"])[${count}]
        Should Be Equal As Strings    ${actual_name}    ${name}
        ${count}    Evaluate    ${count} + 1
    END