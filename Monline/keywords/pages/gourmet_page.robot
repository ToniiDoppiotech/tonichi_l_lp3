*** Settings ***
Library     SeleniumLibrary
Resource    ../import.robot

*** Keywords ***
Verify page language
    [Arguments]    ${language}
    ${lang_attribute}=    SeleniumLibrary.Get Element Attribute    xpath=//html    lang
    Log To Console   Current language is : ${lang_attribute}
    ${category_text}=    SeleniumLibrary.Get Text    ${gourmet_locator.btn_category}
    Log To Console   Category button text is : ${category_text}
    Should Be Equal    ${lang_attribute}    ${Verify_language.${language}}[html_language]
    Should Be Equal    ${category_text}     ${Verify_language.${language}}[category_text_language]

Click language button
    SeleniumLibrary.Wait Until Element Is Enabled    ${gourmet_locator.btn_language}    timeout=${timeout}
    SeleniumLibrary.Click Element    ${gourmet_locator.btn_language}

Change language option
    [Arguments]    ${language}
    SeleniumLibrary.Wait Until Element Is Enabled    ${gourmet_locator.${language}_language_option}    timeout=${timeout}
    SeleniumLibrary.Click Element    ${gourmet_locator.${language}_language_option}