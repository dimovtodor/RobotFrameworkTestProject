*** Settings ***
Documentation  Setup and Teardown for the app

Resource  ../Settings.robot
Resource  Validations.robot
Resource  Fields.robot
Resource  Do.robot

*** Keywords ***

Login Page Setup
    Navigate to [https://www.saucedemo.com/] in [Firefox] browser

App Setup
    Navigate to [https://www.saucedemo.com/] in [Firefox] browser
    Within The App
    Validate that the [username] field is displayed
    Enter [standard_user] in the [username] field
    Validate that the [password] field is displayed
    Enter [secret_sauce] in the [password] field
    Validate that the [LOGIN] button with type [1] is displayed
    Click the [LOGIN] button where the button type is [1]
    Validate that the [Products] text label with type [1] is displayed

App Teardown
    delete all cookies
    close all browsers
