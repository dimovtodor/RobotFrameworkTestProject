*** Settings ***
Documentation  Tests for the cart

Resource  ../Keywords/Setup_Teardown.robot
Resource  ../Keywords/Context.robot
Resource  ../Keywords/Validations.robot
Resource  ../Keywords/Fields.robot
Resource  ../Keywords/Do.robot

Suite Setup  App Setup
Suite Teardown  App Teardown

*** Test Cases ***

Check if the "Sauce Labs Backpack" inventory item card is added to cart after a click on the "ADD TO CART" button
    Within The App
    Validate that the [Sauce Labs Backpack] inventory item card is displayed
    Wihtin The [Sauce Labs Backpack] Inventory Item Card
    Validate that the [Sauce Labs Backpack] link with type [2] is displayed
    Validate that the [carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.] text label with type [1] is displayed
    Validate that the [29.99] text label with type [1] is displayed
    Validate that the [ADD TO CART] button with type [2] is displayed
    Click the [ADD TO CART] button where the button type is [2]
    Validate that the [REMOVE] button with type [2] is displayed
    Within The App
    Validate that the [shopping_cart] button with type [6] is displayed
    Click the [shopping_cart] button where the button type is [6]
    Within The App
    Validate that the [Sauce Labs Backpack] cart item card is displayed
    Within The [Sauce Labs Backpack] Cart Item Card
    Validate that the [Sauce Labs Backpack] link with type [2] is displayed
    Validate that the [carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.] text label with type [1] is displayed
    Validate that the [29.99] text label with type [1] is displayed

Check if the "Sauce Labs Backpack" inventory item card is added to cart after a click on the "REMOVE" button from both Products page and Cart page
    Within The App
    Validate that the [Sauce Labs Backpack] cart item card is displayed
    Within The [Sauce Labs Backpack] Cart Item Card
    Validate that the [REMOVE] button with type [2] is displayed
    Click the [REMOVE] button where the button type is [2]
    Within The App
    Validate that the [Sauce Labs Backpack] cart item card is not displayed
    Validate that the [Continue Shopping] button with type [3] is displayed
    Click the [Continue Shopping] button where the button type is [3]
    Validate that the [Sauce Labs Backpack] inventory item card is displayed
    Wihtin The [Sauce Labs Backpack] Inventory Item Card
    Validate that the [ADD TO CART] button with type [2] is displayed
    Click the [ADD TO CART] button where the button type is [2]
    Validate that the [REMOVE] button with type [2] is displayed
    Click the [REMOVE] button where the button type is [2]
    Within The App
    Validate that the [shopping_cart] button with type [6] is displayed
    Click the [shopping_cart] button where the button type is [6]
    Within The App
    Validate that the [Sauce Labs Backpack] cart item card is not displayed
    Validate that the [Continue Shopping] button with type [3] is displayed
    Click the [Continue Shopping] button where the button type is [3]

Check if the "Sauce Labs Bike Light" inventory item card is added to cart after a click on the "ADD TO CART" button
    Within The App
    Validate that the [Sauce Labs Bike Light] inventory item card is displayed
    Wihtin The [Sauce Labs Bike Light] Inventory Item Card
    Validate that the [Sauce Labs Bike Light] link with type [2] is displayed
    Validate that the [A red light isn't the desired state in testing but it sure helps when riding your bike at night. Water-resistant with 3 lighting modes, 1 AAA battery included.] text label with type [1] is displayed
    Validate that the [9.99] text label with type [1] is displayed
    Validate that the [ADD TO CART] button with type [2] is displayed
    Click the [ADD TO CART] button where the button type is [2]
    Validate that the [REMOVE] button with type [2] is displayed
    Within The App
    Validate that the [shopping_cart] button with type [6] is displayed
    Click the [shopping_cart] button where the button type is [6]
    Within The App
    Validate that the [Sauce Labs Bike Light] cart item card is displayed
    Within The [Sauce Labs Bike Light] Cart Item Card
    Validate that the [Sauce Labs Bike Light] link with type [2] is displayed
    Validate that the [A red light isn't the desired state in testing but it sure helps when riding your bike at night. Water-resistant with 3 lighting modes, 1 AAA battery included.] text label with type [1] is displayed
    Validate that the [9.99] text label with type [1] is displayed

Check if the "Sauce Labs Bike Light" inventory item card is added to cart after a click on the "REMOVE" button from both Products page and Cart page
    Within The App
    Validate that the [Sauce Labs Bike Light] cart item card is displayed
    Within The [Sauce Labs Bike Light] Cart Item Card
    Validate that the [REMOVE] button with type [2] is displayed
    Click the [REMOVE] button where the button type is [2]
    Within The App
    Validate that the [Sauce Labs Bike Light] cart item card is not displayed
    Validate that the [Continue Shopping] button with type [3] is displayed
    Click the [Continue Shopping] button where the button type is [3]
    Validate that the [Sauce Labs Bike Light] inventory item card is displayed
    Wihtin The [Sauce Labs Bike Light] Inventory Item Card
    Validate that the [ADD TO CART] button with type [2] is displayed
    Click the [ADD TO CART] button where the button type is [2]
    Validate that the [REMOVE] button with type [2] is displayed
    Click the [REMOVE] button where the button type is [2]
    Within The App
    Validate that the [shopping_cart] button with type [6] is displayed
    Click the [shopping_cart] button where the button type is [6]
    Within The App
    Validate that the [Sauce Labs Bike Light] cart item card is not displayed
    Validate that the [Continue Shopping] button with type [3] is displayed
    Click the [Continue Shopping] button where the button type is [3]

Check if the "Sauce Labs Bolt T-Shirt" inventory item card is added to cart after a click on the "ADD TO CART" button
    Within The App
    Validate that the [Sauce Labs Bolt T-Shirt] inventory item card is displayed
    Wihtin The [Sauce Labs Bolt T-Shirt] Inventory Item Card
    Validate that the [Sauce Labs Bolt T-Shirt] link with type [2] is displayed
    Validate that the [Get your testing superhero on with the Sauce Labs bolt T-shirt. From American Apparel, 100% ringspun combed cotton, heather gray with red bolt.] text label with type [1] is displayed
    Validate that the [15.99] text label with type [1] is displayed
    Validate that the [ADD TO CART] button with type [2] is displayed
    Click the [ADD TO CART] button where the button type is [2]
    Validate that the [REMOVE] button with type [2] is displayed
    Within The App
    Validate that the [shopping_cart] button with type [6] is displayed
    Click the [shopping_cart] button where the button type is [6]
    Within The App
    Validate that the [Sauce Labs Bolt T-Shirt] cart item card is displayed
    Within The [Sauce Labs Bolt T-Shirt] Cart Item Card
    Validate that the [Sauce Labs Bolt T-Shirt] link with type [2] is displayed
    Validate that the [Get your testing superhero on with the Sauce Labs bolt T-shirt. From American Apparel, 100% ringspun combed cotton, heather gray with red bolt.] text label with type [1] is displayed
    Validate that the [15.99] text label with type [1] is displayed

Check if the "Sauce Labs Bolt T-Shirt" inventory item card is added to cart after a click on the "REMOVE" button from both Products page and Cart page
    Within The App
    Validate that the [Sauce Labs Bolt T-Shirt] cart item card is displayed
    Within The [Sauce Labs Bolt T-Shirt] Cart Item Card
    Validate that the [REMOVE] button with type [2] is displayed
    Click the [REMOVE] button where the button type is [2]
    Within The App
    Validate that the [Sauce Labs Bolt T-Shirt] cart item card is not displayed
    Validate that the [Continue Shopping] button with type [3] is displayed
    Click the [Continue Shopping] button where the button type is [3]
    Validate that the [Sauce Labs Bolt T-Shirt] inventory item card is displayed
    Wihtin The [Sauce Labs Bolt T-Shirt] Inventory Item Card
    Validate that the [ADD TO CART] button with type [2] is displayed
    Click the [ADD TO CART] button where the button type is [2]
    Validate that the [REMOVE] button with type [2] is displayed
    Click the [REMOVE] button where the button type is [2]
    Within The App
    Validate that the [shopping_cart] button with type [6] is displayed
    Click the [shopping_cart] button where the button type is [6]
    Within The App
    Validate that the [Sauce Labs Bolt T-Shirt] cart item card is not displayed
    Validate that the [Continue Shopping] button with type [3] is displayed
    Click the [Continue Shopping] button where the button type is [3]

Check if the "Sauce Labs Fleece Jacket" inventory item card is added to cart after a click on the "ADD TO CART" button
    Within The App
    Validate that the [Sauce Labs Fleece Jacket] inventory item card is displayed
    Wihtin The [Sauce Labs Fleece Jacket] Inventory Item Card
    Validate that the [Sauce Labs Fleece Jacket] link with type [2] is displayed
    Validate that the [It's not every day that you come across a midweight quarter-zip fleece jacket capable of handling everything from a relaxing day outdoors to a busy day at the office.] text label with type [1] is displayed
    Validate that the [49.99] text label with type [1] is displayed
    Validate that the [ADD TO CART] button with type [2] is displayed
    Click the [ADD TO CART] button where the button type is [2]
    Validate that the [REMOVE] button with type [2] is displayed
    Within The App
    Validate that the [shopping_cart] button with type [6] is displayed
    Click the [shopping_cart] button where the button type is [6]
    Within The App
    Validate that the [Sauce Labs Fleece Jacket] cart item card is displayed
    Within The [Sauce Labs Fleece Jacket] Cart Item Card
    Validate that the [Sauce Labs Fleece Jacket] link with type [2] is displayed
    Validate that the [It's not every day that you come across a midweight quarter-zip fleece jacket capable of handling everything from a relaxing day outdoors to a busy day at the office.] text label with type [1] is displayed
    Validate that the [49.99] text label with type [1] is displayed

Check if the "Sauce Labs Fleece Jacket" inventory item card is added to cart after a click on the "REMOVE" button from both Products page and Cart page
    Within The App
    Validate that the [Sauce Labs Fleece Jacket] cart item card is displayed
    Within The [Sauce Labs Fleece Jacket] Cart Item Card
    Validate that the [REMOVE] button with type [2] is displayed
    Click the [REMOVE] button where the button type is [2]
    Within The App
    Validate that the [Sauce Labs Fleece Jacket] cart item card is not displayed
    Validate that the [Continue Shopping] button with type [3] is displayed
    Click the [Continue Shopping] button where the button type is [3]
    Validate that the [Sauce Labs Fleece Jacket] inventory item card is displayed
    Wihtin The [Sauce Labs Fleece Jacket] Inventory Item Card
    Validate that the [ADD TO CART] button with type [2] is displayed
    Click the [ADD TO CART] button where the button type is [2]
    Validate that the [REMOVE] button with type [2] is displayed
    Click the [REMOVE] button where the button type is [2]
    Within The App
    Validate that the [shopping_cart] button with type [6] is displayed
    Click the [shopping_cart] button where the button type is [6]
    Within The App
    Validate that the [Sauce Labs Fleece Jacket] cart item card is not displayed
    Validate that the [Continue Shopping] button with type [3] is displayed
    Click the [Continue Shopping] button where the button type is [3]

Check if the "Sauce Labs Onesie" inventory item card is added to cart after a click on the "ADD TO CART" button
    Within The App
    Validate that the [Sauce Labs Onesie] inventory item card is displayed
    Wihtin The [Sauce Labs Onesie] Inventory Item Card
    Validate that the [Sauce Labs Onesie] link with type [2] is displayed
    Validate that the [Rib snap infant onesie for the junior automation engineer in development. Reinforced 3-snap bottom closure, two-needle hemmed sleeved and bottom won't unravel.] text label with type [1] is displayed
    Validate that the [7.99] text label with type [1] is displayed
    Validate that the [ADD TO CART] button with type [2] is displayed
    Click the [ADD TO CART] button where the button type is [2]
    Validate that the [REMOVE] button with type [2] is displayed
    Within The App
    Validate that the [shopping_cart] button with type [6] is displayed
    Click the [shopping_cart] button where the button type is [6]
    Within The App
    Validate that the [Sauce Labs Onesie] cart item card is displayed
    Within The [Sauce Labs Onesie] Cart Item Card
    Validate that the [Sauce Labs Onesie] link with type [2] is displayed
    Validate that the [Rib snap infant onesie for the junior automation engineer in development. Reinforced 3-snap bottom closure, two-needle hemmed sleeved and bottom won't unravel.] text label with type [1] is displayed
    Validate that the [7.99] text label with type [1] is displayed

Check if the "Sauce Labs Onesie" inventory item card is added to cart after a click on the "REMOVE" button from both Products page and Cart page
    Within The App
    Validate that the [Sauce Labs Onesie] cart item card is displayed
    Within The [Sauce Labs Onesie] Cart Item Card
    Validate that the [REMOVE] button with type [2] is displayed
    Click the [REMOVE] button where the button type is [2]
    Within The App
    Validate that the [Sauce Labs Onesie] cart item card is not displayed
    Validate that the [Continue Shopping] button with type [3] is displayed
    Click the [Continue Shopping] button where the button type is [3]
    Validate that the [Sauce Labs Onesie] inventory item card is displayed
    Wihtin The [Sauce Labs Onesie] Inventory Item Card
    Validate that the [ADD TO CART] button with type [2] is displayed
    Click the [ADD TO CART] button where the button type is [2]
    Validate that the [REMOVE] button with type [2] is displayed
    Click the [REMOVE] button where the button type is [2]
    Within The App
    Validate that the [shopping_cart] button with type [6] is displayed
    Click the [shopping_cart] button where the button type is [6]
    Within The App
    Validate that the [Sauce Labs Onesie] cart item card is not displayed
    Validate that the [Continue Shopping] button with type [3] is displayed
    Click the [Continue Shopping] button where the button type is [3]

Check if the "Test.allTheThings() T-Shirt (Red)" inventory item card is added to cart after a click on the "ADD TO CART" button
    Within The App
    Validate that the [Test.allTheThings() T-Shirt (Red)] inventory item card is displayed
    Wihtin The [Test.allTheThings() T-Shirt (Red)] Inventory Item Card
    Validate that the [Test.allTheThings() T-Shirt (Red)] link with type [2] is displayed
    Validate that the [This classic Sauce Labs t-shirt is perfect to wear when cozying up to your keyboard to automate a few tests. Super-soft and comfy ringspun combed cotton.] text label with type [1] is displayed
    Validate that the [15.99] text label with type [1] is displayed
    Validate that the [ADD TO CART] button with type [2] is displayed
    Click the [ADD TO CART] button where the button type is [2]
    Validate that the [REMOVE] button with type [2] is displayed
    Within The App
    Validate that the [shopping_cart] button with type [6] is displayed
    Click the [shopping_cart] button where the button type is [6]
    Within The App
    Validate that the [Test.allTheThings() T-Shirt (Red)] cart item card is displayed
    Within The [Test.allTheThings() T-Shirt (Red)] Cart Item Card
    Validate that the [Test.allTheThings() T-Shirt (Red)] link with type [2] is displayed
    Validate that the [This classic Sauce Labs t-shirt is perfect to wear when cozying up to your keyboard to automate a few tests. Super-soft and comfy ringspun combed cotton.] text label with type [1] is displayed
    Validate that the [15.99] text label with type [1] is displayed

Check if the "Test.allTheThings() T-Shirt (Red)" inventory item card is added to cart after a click on the "REMOVE" button from both Products page and Cart page
    Within The App
    Validate that the [Test.allTheThings() T-Shirt (Red)] cart item card is displayed
    Within The [Test.allTheThings() T-Shirt (Red)] Cart Item Card
    Validate that the [REMOVE] button with type [2] is displayed
    Click the [REMOVE] button where the button type is [2]
    Within The App
    Validate that the [Test.allTheThings() T-Shirt (Red)] cart item card is not displayed
    Validate that the [Continue Shopping] button with type [3] is displayed
    Click the [Continue Shopping] button where the button type is [3]
    Validate that the [Test.allTheThings() T-Shirt (Red)] inventory item card is displayed
    Wihtin The [Test.allTheThings() T-Shirt (Red)] Inventory Item Card
    Validate that the [ADD TO CART] button with type [2] is displayed
    Click the [ADD TO CART] button where the button type is [2]
    Validate that the [REMOVE] button with type [2] is displayed
    Click the [REMOVE] button where the button type is [2]
    Within The App
    Validate that the [shopping_cart] button with type [6] is displayed
    Click the [shopping_cart] button where the button type is [6]
    Within The App
    Validate that the [Test.allTheThings() T-Shirt (Red)] cart item card is not displayed
    Validate that the [Continue Shopping] button with type [3] is displayed
    Click the [Continue Shopping] button where the button type is [3]