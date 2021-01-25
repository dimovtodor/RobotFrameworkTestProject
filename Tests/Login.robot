*** Settings ***
Documentation  Tests for the Login page

Resource  ../Keywords/Setup_Teardown.robot
Resource  ../Keywords/Context.robot
Resource  ../Keywords/Validations.robot
Resource  ../Keywords/Fields.robot
Resource  ../Keywords/Do.robot

Suite Setup  Login Page Setup
Suite Teardown  App Teardown

*** Test Cases ***
Check if the SwagLabs logo is displayed
    Within The App
    Validate that the SwagLabs logo is displayed

Check if the Login Bot image is displayed
    Within The App
    Validate that the [Login_Bot] image is displayed

Check if the username field is displayed
    Within The App
    Validate that the [username] field is displayed

Check if a "Username" placeholder is displayed in the username field
    Within The App
    Validate that the [username] field is displayed
    Validate that a [Username] placeholder is displayed in the [username] field

Check if the username field has character limit
    Within The App
    Validate that the [username] field is displayed
    Enter [${51_Characters}] in the [username] field
    Validate that the character limit of the [username] text field where the value is [${51_Characters}] is working

Check if the password field is displayed
    Within The App
    Validate that the [password] field is displayed

Check if a "Password" placeholder is displayed in the username field
    Within The App
    Validate that the [password] field is displayed
    Validate that a [Password] placeholder is displayed in the [password] field

Check if the password field has character limit
    Within The App
    Validate that the [password] field is displayed
    Enter [${51_Characters}] in the [password] field
    Validate that the character limit of the [password] text field where the value is [${51_Characters}] is working

Check if the "LOGIN" button is displayed
    Within The App
    Validate that the [LOGIN] button with type [1] is displayed

Check if clicking the "LOGIN" button when the fields are empty displays a "Epic sadface: Username is required" error message and a error button
    Within The App
    Validate that the [username] field is displayed
    Enter [a] in the [username] field
    Clear the [username] field
    Validate that the [password] field is displayed
    Enter [a] in the [password] field
    Clear the [password] field
    Validate that the [LOGIN] button with type [1] is displayed
    Click the [LOGIN] button where the button type is [1]
    Validate that the [Epic sadface:][Username is required] error message is displayed
    Validate that the [error-button] button with type [5] is displayed
    Click the [error-button] button where the button type is [5]
    Validate that the [Epic sadface:][Username is required] error message is not displayed

Check if clicking the "LOGIN" button when the username field is empty displays a "Epic sadface: Username is required" error message and a error button
    Within The App
    Validate that the [password] field is displayed
    Enter [test] in the [password] field
    Validate that the [LOGIN] button with type [1] is displayed
    Click the [LOGIN] button where the button type is [1]
    Validate that the [Epic sadface:][Username is required] error message is displayed
    Validate that the [error-button] button with type [5] is displayed
    Click the [error-button] button where the button type is [5]
    Validate that the [Epic sadface:][Username is required] error message is not displayed
    Enter [a] in the [password] field
    Clear the [password] field

Check if clicking the "LOGIN" button when the password field is empty displays a "Epic sadface: Password is required" error message and a error button
    Within The App
    Validate that the [username] field is displayed
    Enter [test] in the [username] field
    Validate that the [LOGIN] button with type [1] is displayed
    Click the [LOGIN] button where the button type is [1]
    Validate that the [Epic sadface:][Password is required] error message is displayed
    Validate that the [error-button] button with type [5] is displayed
    Click the [error-button] button where the button type is [5]
    Validate that the [Epic sadface:][Password is required] error message is not displayed

Check if clicking the "LOGIN" button when the entered data in the fields does not match an existing user displays a "Epic sadface: Username and password do not match any user in this service" error message and a error button
    Within The App
    Validate that the [username] field is displayed
    Enter [test] in the [username] field
    Validate that the [password] field is displayed
    Enter [test] in the [password] field
    Validate that the [LOGIN] button with type [1] is displayed
    Click the [LOGIN] button where the button type is [1]
    Validate that the [Epic sadface:][Username and password do not match any user in this service] error message is displayed
    Validate that the [error-button] button with type [5] is displayed
    Click the [error-button] button where the button type is [5]
    Validate that the [Epic sadface:][Username and password do not match any user in this service] error message is not displayed

Check if clicking the "LOGIN" button when the entered data in the fields matches a locked user displays a "Epic sadface: Sorry, this user has been locked out." error message and a error button
    Within The App
    Validate that the [username] field is displayed
    Enter [locked_out_user] in the [username] field
    Validate that the [password] field is displayed
    Enter [secret_sauce] in the [password] field
    Validate that the [LOGIN] button with type [1] is displayed
    Click the [LOGIN] button where the button type is [1]
    Validate that the [Epic sadface:][Sorry, this user has been locked out.] error message is displayed
    Validate that the [error-button] button with type [5] is displayed
    Click the [error-button] button where the button type is [5]
    Validate that the [Epic sadface:][Sorry, this user has been locked out.] error message is not displayed

Check if clicking the "LOGIN" button when the entered data in the fields matches an active user logs the user in
    Within The App
    Validate that the [username] field is displayed
    Enter [standard_user] in the [username] field
    Validate that the [password] field is displayed
    Enter [secret_sauce] in the [password] field
    Validate that the [LOGIN] button with type [1] is displayed
    Click the [LOGIN] button where the button type is [1]
    Validate that the [Products] text label with type [1] is displayed
