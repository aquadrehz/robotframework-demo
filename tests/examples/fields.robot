*** Settings ***
Library    ../../resources/examples/steps.py
Resource    ../../resources/keyword_001.robot

*** Test Cases ***
Test reproduce bug
    [Tags]    reproduce-001
    Given Initial Web Browser    https://docs.google.com/spreadsheets/d/1hlibZBuIkUuqtNohwBWo5G5x3MUuL5AjyZ2KKgLehjI
    And See Google Sheet Contain Tab Names Sequentially
    ...    sheet_001    sheet_002    sheet_003

Test with fields: Preconditions
    [Tags]    qase.fields:{ "preconditions": "Write your precondition here." }
    Step 01
    Step 02

Test with fields: Postconditions
    [Tags]    qase.fields:{ "postconditions": "Write your postcondition here." }
    Step 01
    Step 02

Test with fields: Description
    [Tags]    qase.fields:{ "description": "Write your description here." }
    Step 01
    Step 02


    # Field: Priority

Test with fields: Priority = low
    [Tags]    qase.fields:{ "priority": "low" }
    Step 01
    Step 02

Test with fields: Priority = medium
    [Tags]    qase.fields:{ "priority": "medium" }
    Step 01
    Step 02

Test with fields: Priority = high
    [Tags]    qase.fields:{ "priority": "high" }
    Step 01
    Step 02


    # Field: Priority


Test with fields: Severity = trivial
    [Tags]    qase.fields:{ "severity": "trivial" }
    Step 01
    Step 02

Test with fields: Severity = minor
    [Tags]    qase.fields:{ "severity": "minor" }
    Step 01
    Step 02

Test with fields: Severity = normal
    [Tags]    qase.fields:{ "severity": "normal" }
    Step 01
    Step 02

Test with fields: Severity = major
    [Tags]    qase.fields:{ "severity": "major" }
    Step 01
    Step 02

Test with fields: Severity = critical
    [Tags]    qase.fields:{ "severity": "critical" }
    Step 01
    Step 02

Test with fields: Severity = blocker
    [Tags]    qase.fields:{ "severity": "blocker" }
    Step 01
    Step 02


    # Field: Layer


Test with fields: Layer = e2e
    [Tags]    qase.fields:{ "layer": "e2e" }
    Step 01
    Step 02

Test with fields: Layer = api
    [Tags]    qase.fields:{ "layer": "api" }
    Step 01
    Step 02

Test with fields: Layer = unit
    [Tags]    qase.fields:{ "layer": "unit" }
    Step 01
    Step 02
