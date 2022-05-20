*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/Commonfunctionality.robot
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/eBay_UserDefindKeywords.robot
Resource  ../../Resources/PageObjects/SearchresultsPage.robot


Test Setup  Commonfunctionality.Start TestCase
Test Teardown  Commonfunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    HeaderPage.Input Search Text and Click Search
    SearchResultPage.verify Search Results

Verify advanced search functionality1
    [Documentation]  This test case verifies the advanced search
    [Tags]  Functional

    HeaderPage.Click on Advanced Search Text and Click Search   robot
    SearchResultsPage.Verify Search Results    robot


Verify advanced search functionality2
    [Documentation]  This test case verifies the advanced search
    [Tags]  Functional

    HeaderPage.Click on Advanced Search Text and Click Search   books
    SearchResultsPage.Verify Search Results    books

Verify advanced search functionality3
    [Documentation]  This test case verifies the advanced search
    [Tags]  Functional

    HeaderPage.Click on Advanced Search Text and Click Search   Travel
    SearchResultsPage.Verify Search Results    Travel



