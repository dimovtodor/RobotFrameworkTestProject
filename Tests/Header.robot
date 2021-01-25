*** Settings ***
Documentation  Tests for the header

Resource  ../Keywords/Setup_Teardown.robot
Resource  ../Keywords/Context.robot
Resource  ../Keywords/Validations.robot
Resource  ../Keywords/Fields.robot
Resource  ../Keywords/Do.robot

Suite Setup  App Setup
Suite Teardown  App Teardown

*** Test Cases ***

Check if the SwagLabs logo is displayed
    Within The App
    Validate that the SwagLabs logo is displayed

Check if a shopping card button is displayed
    Within The App
    Validate that the [shopping_cart] button with type [6] is displayed

Check if clicking the shopping cart button opens the shopping cart
    Within The App
    Validate that the [shopping_cart] button with type [6] is displayed
    Click the [shopping_cart] button where the button type is [6]
    Validate that the [Your Cart] text label with type [1] is displayed

Check if a hamburger menu button is displayed
    Within The App
    Validate that the [Open Menu] button with type [7] is displayed

Check if clicking the hamburger menu button displays a side menu
    Within The App
    Validate that the [Open Menu] button with type [7] is displayed
    Click the [Open Menu] button where the button type is [7]
    Validate that the side menu is displayed

Check if a close menu button is displayed in the side menu
    Within The Side Menu
    Validate that the [Close Menu] button with type [7] is displayed

Check if clicking the close menu button closes the side menu
    Within The Side Menu
    Validate that the [Close Menu] button with type [7] is displayed
    Click the [Close Menu] button where the button type is [7]
    Within The App

Check if a "All Items" link is displayed in the side menu
    Within The App
    Validate that the [Open Menu] button with type [7] is displayed
    Click the [Open Menu] button where the button type is [7]
    Validate that the side menu is displayed
    Within The Side Menu
    Validate that the [All Items] link with type [1] is displayed

Check if clicking the "All Items" link navigates the user to the products page
    Within The Side Menu
    Validate that the [All Items] link with type [1] is displayed
    Click the [All Items] link where the link type is [1]
    Within The App
    Validate that the [Products] text label with type [1] is displayed

Check if a "Logout" link is displayed in the side menu
    Within The App
    Validate that the [Open Menu] button with type [7] is displayed
    Click the [Open Menu] button where the button type is [7]
    Validate that the side menu is displayed
    Within The Side Menu
    Validate that the [Logout] link with type [1] is displayed

Check if clicking the "Logout" link logs the user out
    Within The Side Menu
    Validate that the [Logout] link with type [1] is displayed
    Click the [Logout] link where the link type is [1]
    Within The App
    Validate that the side menu is not displayed
    Validate that the [username] field is displayed
    Validate that the [password] field is displayed