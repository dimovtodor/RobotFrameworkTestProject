*** Settings ***
Documentation  Tests for sorting products

Resource  ../Keywords/Setup_Teardown.robot
Resource  ../Keywords/Context.robot
Resource  ../Keywords/Validations.robot
Resource  ../Keywords/Fields.robot
Resource  ../Keywords/Do.robot

Suite Setup  App Setup
Suite Teardown  App Teardown

*** Test Cases ***

Check if the products are correctly sorted when "Name (A to Z)" is selected in the sorting dropdown menu
    Within The App
    Validate that the sorting dropdown button is displayed
    Click the sorting dropdown button
    Within The Sorting Dropdown Menu
    Validate that the [Name (A to Z)] sorting option is displayed
    Click the [Name (A to Z)] sorting option
    Within The App
    Validate that the products are sorted by name A to Z

Check if the products are correctly sorted when "Name (Z to A)" is selected in the sorting dropdown menu
    Within The App
    Validate that the sorting dropdown button is displayed
    Click the sorting dropdown button
    Within The Sorting Dropdown Menu
    Validate that the [Name (Z to A)] sorting option is displayed
    Click the [Name (Z to A)] sorting option
    Within The App
    Validate that the products are sorted by name Z to A

Check if the products are correctly sorted when "Price (low to high)" is selected in the sorting dropdown menu
    Within The App
    Validate that the sorting dropdown button is displayed
    Click the sorting dropdown button
    Within The Sorting Dropdown Menu
    Validate that the [Price (low to high)] sorting option is displayed
    Click the [Price (low to high)] sorting option
    Within The App
    Validate that the products are sorted by price low to high

Check if the products are correctly sorted when "Price (high to low)" is selected in the sorting dropdown menu
    Within The App
    Validate that the sorting dropdown button is displayed
    Click the sorting dropdown button
    Within The Sorting Dropdown Menu
    Validate that the [Price (high to low)] sorting option is displayed
    Click the [Price (high to low)] sorting option
    Within The App
    Validate that the products are sorted by price high to low