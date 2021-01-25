*** Settings ***
Documentation  Tests for checkout

Resource  ../Keywords/Setup_Teardown.robot
Resource  ../Keywords/Context.robot
Resource  ../Keywords/Validations.robot
Resource  ../Keywords/Fields.robot
Resource  ../Keywords/Do.robot

Suite Setup  App Setup
Suite Teardown  App Teardown

*** Test Cases ***

Check if the user cannot navigate to the checkout form with no products in the cart by clicking the "CHECKOUT" button
    Within The App
    Validate that the [shopping_cart] button with type [6] is displayed
    Click the [shopping_cart] button where the button type is [6]
    Validate that the [Your Cart] text label with type [1] is displayed
    Validate that the [QTY] text label with type [1] is displayed
    Validate that the [DESCRIPTION] text label with type [1] is displayed
    Validate that the [CHECKOUT] button with type [3] is displayed
    Click the [CHECKOUT] button where the button type is [3]
    run keyword and continue on failure  Validate that the [Your Cart] text label with type [1] is displayed
    Validate that the [Open Menu] button with type [7] is displayed
    Click the [Open Menu] button where the button type is [7]
    Validate that the side menu is displayed
    Within The Side Menu
    Validate that the [All Items] link with type [1] is displayed
    Click the [All Items] link where the link type is [1]
    Within The App
    Validate that the [Products] text label with type [1] is displayed

Check if the user can navigate to the checkout form when there are products in the cart by clicking the "CHECKOUT" button
    Within The App
    Validate that the [Sauce Labs Backpack] inventory item card is displayed
    Wihtin The [Sauce Labs Backpack] Inventory Item Card
    Validate that the [ADD TO CART] button with type [2] is displayed
    Click the [ADD TO CART] button where the button type is [2]
    Within The App
    Validate that the [Sauce Labs Bike Light] inventory item card is displayed
    Wihtin The [Sauce Labs Bike Light] Inventory Item Card
    Validate that the [ADD TO CART] button with type [2] is displayed
    Click the [ADD TO CART] button where the button type is [2]
    Within The App
    Validate that the [shopping_cart] button with type [6] is displayed
    Click the [shopping_cart] button where the button type is [6]
    Validate that the [Sauce Labs Backpack] cart item card is displayed
    Validate that the [Sauce Labs Bike Light] cart item card is displayed
    Validate that the [CHECKOUT] button with type [3] is displayed
    Click the [CHECKOUT] button where the button type is [3]
    Validate that the [Checkout: Your Information] text label with type [1] is displayed

Check if a click on the "CANCEL" button under the checkout form navigates the user back to the cart
    Within The App
    Validate that the [Checkout: Your Information] text label with type [1] is displayed
    Validate that the [CANCEL] button with type [3] is displayed
    Click the [CANCEL] button where the button type is [3]
    Validate that the [Your Cart] text label with type [1] is displayed
    Validate that the [CHECKOUT] button with type [3] is displayed
    Click the [CHECKOUT] button where the button type is [3]
    Validate that the [Checkout: Your Information] text label with type [1] is displayed

Check if the first name field is displayed
    Within The App
    Validate that the [firstName] field is displayed

Check if a "First Name" placeholder is displayed in the first name field
    Within The App
    Validate that the [firstName] field is displayed
    Validate that a [First Name] placeholder is displayed in the [firstName] field

Check if the first name field has character limit
    Within The App
    Validate that the [firstName] field is displayed
    Enter [${51_Characters}] in the [firstName] field
    Validate that the character limit of the [firstName] text field where the value is [${51_Characters}] is working

Check if the last name field is displayed
    Within The App
    Validate that the [lastName] field is displayed

Check if a "Last Name" placeholder is displayed in the last name field
    Within The App
    Validate that the [lastName] field is displayed
    Validate that a [Last Name] placeholder is displayed in the [lastName] field

Check if the last name field has character limit
    Within The App
    Validate that the [lastName] field is displayed
    Enter [${51_Characters}] in the [lastName] field
    Validate that the character limit of the [lastName] text field where the value is [${51_Characters}] is working

Check if the postal code field is displayed
    Within The App
    Validate that the [postalCode] field is displayed

Check if a "Zip/Postal Code" placeholder is displayed in the postal code field
    Within The App
    Validate that the [postalCode] field is displayed
    Validate that a [Last Name] placeholder is displayed in the [lastName] field

Check if the postal code field has character limit
    Within The App
    Validate that the [postalCode] field is displayed
    Enter [${51_Characters}] in the [postalCode] field
    Validate that the character limit of the [postalCode] text field where the value is [${51_Characters}] is working

Check if a click on the "CONTINUE" button when the fields of the checkout form are empty displays a "Error: First Name is required" error notification
    Within The App
    Validate that the [Checkout: Your Information] text label with type [1] is displayed
    Validate that the [firstName] field is displayed
    Enter [a] in the [firstName] field
    Clear the [firstName] field
    Validate that the [lastName] field is displayed
    Enter [a] in the [lastName] field
    Clear the [lastName] field
    Validate that the [postalCode] field is displayed
    Enter [a] in the [postalCode] field
    Clear the [postalCode] field
    Validate that the [CONTINUE] button with type [1] is displayed
    Click the [CONTINUE] button where the button type is [1]
    Validate that the [Error:][First Name is required] error message is displayed

Check if a click on the "CONTINUE" button when only the first name field of the checkout form has data displays a "Error: Last Name is required" error notification
    Within The App
    Validate that the [Checkout: Your Information] text label with type [1] is displayed
    Validate that the [firstName] field is displayed
    Enter [First] in the [firstName] field
    Validate that the [CONTINUE] button with type [1] is displayed
    Click the [CONTINUE] button where the button type is [1]
    Validate that the [Error:][Last Name is required] error message is displayed
    Enter [a] in the [firstName] field
    Clear the [firstName] field

Check if a click on the "CONTINUE" button when only the last name field of the checkout form has data displays a "Error: First Name is required" error notification
    Within The App
    Validate that the [Checkout: Your Information] text label with type [1] is displayed
    Validate that the [lastName] field is displayed
    Enter [Last] in the [lastName] field
    Validate that the [CONTINUE] button with type [1] is displayed
    Click the [CONTINUE] button where the button type is [1]
    Validate that the [Error:][First Name is required] error message is displayed
    Enter [a] in the [lastName] field
    Clear the [lastName] field

Check if a click on the "CONTINUE" button when only the postal code field of the checkout form has data displays a "Error: First Name is required" error notification
    Within The App
    Validate that the [Checkout: Your Information] text label with type [1] is displayed
    Validate that the [postalCode] field is displayed
    Enter [12345] in the [postalCode] field
    Validate that the [CONTINUE] button with type [1] is displayed
    Click the [CONTINUE] button where the button type is [1]
    Validate that the [Error:][First Name is required] error message is displayed
    Enter [a] in the [postalCode] field
    Clear the [postalCode] field

Check if a click on the "CONTINUE" button when the first name field has ivalid data does not navigate the user to the checkout overview page
    Within The App
    Validate that the [Checkout: Your Information] text label with type [1] is displayed
    Validate that the [firstName] field is displayed
    Enter [123] in the [firstName] field
    Validate that the [lastName] field is displayed
    Enter [Last] in the [lastName] field
    Validate that the [postalCode] field is displayed
    Enter [12345] in the [postalCode] field
    Validate that the [CONTINUE] button with type [1] is displayed
    Click the [CONTINUE] button where the button type is [1]
    run keyword and continue on failure  Validate that the [Checkout: Your Information] text label with type [1] is displayed
    go back

Check if a click on the "CONTINUE" button when the last name field has ivalid data does not navigate the user to the checkout overview page
    Within The App
    Validate that the [Checkout: Your Information] text label with type [1] is displayed
    Validate that the [firstName] field is displayed
    Enter [First] in the [firstName] field
    Validate that the [lastName] field is displayed
    Enter [123] in the [lastName] field
    Validate that the [postalCode] field is displayed
    Enter [12345] in the [postalCode] field
    Validate that the [CONTINUE] button with type [1] is displayed
    Click the [CONTINUE] button where the button type is [1]
    run keyword and continue on failure  Validate that the [Checkout: Your Information] text label with type [1] is displayed
    go back

Check if a click on the "CONTINUE" button when the postal code field has ivalid data does not navigate the user to the checkout overview page
    Within The App
    Validate that the [Checkout: Your Information] text label with type [1] is displayed
    Validate that the [firstName] field is displayed
    Enter [First] in the [firstName] field
    Validate that the [lastName] field is displayed
    Enter [Last] in the [lastName] field
    Validate that the [postalCode] field is displayed
    Enter [abcde] in the [postalCode] field
    Validate that the [CONTINUE] button with type [1] is displayed
    Click the [CONTINUE] button where the button type is [1]
    run keyword and continue on failure  Validate that the [Checkout: Your Information] text label with type [1] is displayed
    go back

Check if a click on the "CONTINUE" button when all the fields have valid data navigates the user to the checkout overview page
    Within The App
    Validate that the [Checkout: Your Information] text label with type [1] is displayed
    Validate that the [firstName] field is displayed
    Enter [First] in the [firstName] field
    Validate that the [lastName] field is displayed
    Enter [Last] in the [lastName] field
    Validate that the [postalCode] field is displayed
    Enter [12345] in the [postalCode] field
    Validate that the [CONTINUE] button with type [1] is displayed
    Click the [CONTINUE] button where the button type is [1]
    Validate that the [Checkout: Overview] text label with type [1] is displayed
    Validate that the [QTY] text label with type [1] is displayed
    Validate that the [DESCRIPTION] text label with type [1] is displayed
    Validate that the [Payment Information:] text label with type [1] is displayed
    Validate that the [SauceCard \#31337] text label with type [1] is displayed
    Validate that the [Shipping Information:] text label with type [1] is displayed
    Validate that the [FREE PONY EXPRESS DELIVERY!] text label with type [1] is displayed

Check if the total price is computed correctly
    Within The App
    Validate that the [Sauce Labs Backpack] cart item card is displayed
    Validate that the [Sauce Labs Bike Light] cart item card is displayed
    Validate that the total price of the items is correct

Check if a click on the "CANCEL" button in the checkout overview page navigates the user to the products page
    Within The App
    Validate that the [Checkout: Overview] text label with type [1] is displayed
    Validate that the [CANCEL] button with type [3] is displayed
    Click the [CANCEL] button where the button type is [3]
    Validate that the [Products] text label with type [1] is displayed
    go back

Check if a click on the "FINISH" button in the checkout overview page navigates the user to the thank you page
    Within The App
    Validate that the [Checkout: Overview] text label with type [1] is displayed
    Validate that the [FINISH] button with type [3] is displayed
    Click the [FINISH] button where the button type is [3]
    Validate that the [THANK YOU FOR YOUR ORDER] text label with type [2] is displayed
    Validate that the [Your order has been dispatched, and will arrive just as fast as the pony can get there!] text label with type [1] is displayed
    Validate that the [pony-express] image is displayed