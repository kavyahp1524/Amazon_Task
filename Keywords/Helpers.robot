*** Settings ***
Resource        ../Keywords/ImportFiles.robot

*** Keywords ***

Launching Url And Browser
    Open Browser    ${URL_Amz}    ${Browser}
    Maximize Browser Window

Wait For Element And Click
    [Arguments]    ${element}
    Wait Until Element Is Visible    ${element}    timeout=10s
    Click Element    ${element}