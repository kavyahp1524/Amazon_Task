*** Settings ***
Resource        ../Keywords/ImportFiles.robot

*** Keywords ***
Scroll Down Upto Today'sDeal
    Wait Until Element Is Visible    ${Today'sDeal}
    Scroll Element Into View         ${Today'sDeal}
    Wait Until Element Is Visible    ${Today'sDeal}

Selecting Third Product From Today'sDeal
    Wait For Element And Click       ${Product}   
    Wait For Element And Click       ${Buds}

Verifying Buds Prize
    Element Text Should Be           ${BudsPrize}    ${Prize}
    Wait For Element And Click       ${Details}

Checking Table Content By Doing Ittiration
    ${Rowcount}=    Get Element Count        ${RowCount}
    ${Coloumcount}=    Get Element Count     ${ColoumCount}
    Log To Console    ${Rowcount}
    Log To Console    ${Coloumcount}
    
    FOR    ${RowIndex}    IN RANGE    1    ${Rowcount} + 1
         ${RowContent}    Get Text    xpath://*[@id='productDetails_techSpec_section_1']//tr[${RowIndex}]//th
        Run Keyword If    "${RowContent}" == "${ExpectedTitle}"   Exit For Loop   

    END
    FOR    ${ColoumIndex}    IN RANGE    1    ${ColoumCount} + 1 
         ${CurrentData}=    Get Text    xpath://*[@id='productDetails_techSpec_section_1']//tr[${RowIndex}]//td[${ColoumIndex}]
         Log To Console    ${CurrentData}          
        Run Keyword If    "${CurrentData}" == "${ExpectedData}"    Exit For Loop
        
    END