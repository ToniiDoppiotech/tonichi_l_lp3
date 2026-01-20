*** Settings ***
Library     SeleniumLibrary
Resource    common.robot

Variables    ../resources/settings/setting.yaml
Variables    ../resources/language/gourmet.yaml

#locators
# Variables    ../resources/locators/gourmet_locator.yaml
# Variables    ../resources/locators/home_locator.yaml
Resource    ../resources/locators/home_locator.robot
Resource    ../resources/locators/gourmet_locator.robot

#pages
Resource    ./pages/home_page.robot
Resource    ./pages/gourmet_page.robot

#features
Resource    ./features/home_feature.robot
Resource    ./features/gourmet_feature.robot