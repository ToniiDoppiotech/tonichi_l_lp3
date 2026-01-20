*** Settings ***
Library     SeleniumLibrary
Resource    ../import.robot

*** Keywords ***
Click beauty hall link
    SeleniumLibrary.Wait until element is enabled    ${home_locator.icn_beauty_hall}    timeout=${timeout}
    SeleniumLibrary.Scroll Element Into View    ${home_locator.icn_beauty_hall}
    SeleniumLibrary.Click Element    ${home_locator.icn_beauty_hall}

Verify beauty hall page is displayed
    SeleniumLibrary.Element Should Contain    ${home_locator.lbl_beauty_hall}    Beauty Hall

Click gourmet market link
    SeleniumLibrary.Wait Until Element Is Enabled    ${home_locator.icn_gourmet_market}    timeout=${timeout}
    SeleniumLibrary.Scroll Element Into View    ${home_locator.icn_gourmet_market}
    SeleniumLibrary.Click Element    ${home_locator.icn_gourmet_market}

Verify 10 categories are displayed
    @{category_locators}=    Create List    ${home_locator.icn_beauty_hall}   ${home_locator.icn_women_fashion}   ${home_locator.icn_men_fashion}   ${home_locator.icn_sports_mall}   ${home_locator.icn_power_mall}   ${home_locator.icn_watch_galleria}   ${home_locator.icn_kids}   ${home_locator.icn_betrend}   ${home_locator.icn_the_living}   ${home_locator.icn_gourmet_market}
    FOR    ${locator}    IN    @{category_locators}
        SeleniumLibrary.Page Should Contain Element    ${locator}
    END
    BuiltIn.Length Should Be    ${category_locators}    10

Verify URL gourmet market link
    ${get_gourmet_url}=    SeleniumLibrary.Get Element Attribute    ${home_locator.icn_gourmet_market}    href
    BuiltIn.Log To Console   Gourmet Market URL = ${get_gourmet_url}
    BuiltIn.Should Be Equal As Strings    ${get_gourmet_url}    ${url.gourmet}