*** Settings ***
Documentation  Tests for products

Resource  ../Keywords/Setup_Teardown.robot
Resource  ../Keywords/Context.robot
Resource  ../Keywords/Validations.robot
Resource  ../Keywords/Fields.robot
Resource  ../Keywords/Do.robot

Suite Setup  App Setup
Suite Teardown  App Teardown

*** Test Cases ***

Check if a "Products" text label is displayed
    Within The App
    Validate that the [Products] text label with type [1] is displayed

Check if the "Sauce Labs Backpack" inventory item card is displayed
    Within The App
    Validate that the [Sauce Labs Backpack] inventory item card is displayed

Check if the "Sauce Labs Backpack" inventory item card contains the image, the correct description, "$29.99" price and "ADD TO CART" button
    Within The App
    Validate that the [Sauce Labs Backpack] inventory item card is displayed
    Wihtin The [Sauce Labs Backpack] Inventory Item Card
    Validate that the [sauce-backpack] image is displayed
    Validate that the [Sauce Labs Backpack] link with type [2] is displayed
    Validate that the [carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.] text label with type [1] is displayed
    Validate that the [29.99] text label with type [1] is displayed
    Validate that the [ADD TO CART] button with type [2] is displayed

Check if clicking the "Sauce Labs Backpack" link opens the product page
    Within The App
    Validate that the [Sauce Labs Backpack] inventory item card is displayed
    Wihtin The [Sauce Labs Backpack] Inventory Item Card
    Validate that the [Sauce Labs Backpack] link with type [2] is displayed
    Click the [Sauce Labs Backpack] link where the link type is [2]
    Within The App
    Validate that the [<- Back] button with type [2] is displayed
    Validate that the [sauce-backpack] image is displayed
    Validate that the [Sauce Labs Backpack] text label with type [1] is displayed
    Validate that the [carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.] text label with type [1] is displayed
    Validate that the [29.99] text label with type [1] is displayed
    Validate that the [ADD TO CART] button with type [2] is displayed
    Click the [<- Back] button where the button type is [2]
    Validate that the [Sauce Labs Backpack] inventory item card is displayed

Check if the "Sauce Labs Bike Light" inventory item card contains the image, the correct description, "$9.99" price and "ADD TO CART" button
    Within The App
    Validate that the [Sauce Labs Bike Light] inventory item card is displayed
    Wihtin The [Sauce Labs Bike Light] Inventory Item Card
    Validate that the [bike-light] image is displayed
    Validate that the [Sauce Labs Bike Light] link with type [2] is displayed
    Validate that the [A red light isn't the desired state in testing but it sure helps when riding your bike at night. Water-resistant with 3 lighting modes, 1 AAA battery included.] text label with type [1] is displayed
    Validate that the [9.99] text label with type [1] is displayed
    Validate that the [ADD TO CART] button with type [2] is displayed

Check if clicking the "Sauce Labs Bike Light" link opens the product page
    Within The App
    Validate that the [Sauce Labs Bike Light] inventory item card is displayed
    Wihtin The [Sauce Labs Bike Light] Inventory Item Card
    Validate that the [Sauce Labs Bike Light] link with type [2] is displayed
    Click the [Sauce Labs Bike Light] link where the link type is [2]
    Within The App
    Validate that the [<- Back] button with type [2] is displayed
    Validate that the [bike-light] image is displayed
    Validate that the [Sauce Labs Bike Light] text label with type [1] is displayed
    Validate that the [A red light isn't the desired state in testing but it sure helps when riding your bike at night. Water-resistant with 3 lighting modes, 1 AAA battery included.] text label with type [1] is displayed
    Validate that the [9.99] text label with type [1] is displayed
    Validate that the [ADD TO CART] button with type [2] is displayed
    Click the [<- Back] button where the button type is [2]
    Validate that the [Sauce Labs Bike Light] inventory item card is displayed

Check if the "Sauce Labs Bolt T-Shirt" inventory item card contains the image, the correct description, "$15.99" price and "ADD TO CART" button
    Within The App
    Validate that the [Sauce Labs Bolt T-Shirt] inventory item card is displayed
    Wihtin The [Sauce Labs Bolt T-Shirt] Inventory Item Card
    Validate that the [bolt-shirt] image is displayed
    Validate that the [Sauce Labs Bolt T-Shirt] link with type [2] is displayed
    Validate that the [Get your testing superhero on with the Sauce Labs bolt T-shirt. From American Apparel, 100% ringspun combed cotton, heather gray with red bolt.] text label with type [1] is displayed
    Validate that the [15.99] text label with type [1] is displayed
    Validate that the [ADD TO CART] button with type [2] is displayed

Check if clicking the "Sauce Labs Bolt T-Shirt" link opens the product page
    Within The App
    Validate that the [Sauce Labs Bolt T-Shirt] inventory item card is displayed
    Wihtin The [Sauce Labs Bolt T-Shirt] Inventory Item Card
    Validate that the [Sauce Labs Bolt T-Shirt] link with type [2] is displayed
    Click the [Sauce Labs Bolt T-Shirt] link where the link type is [2]
    Within The App
    Validate that the [<- Back] button with type [2] is displayed
    Validate that the [bolt-shirt] image is displayed
    Validate that the [Sauce Labs Bolt T-Shirt] text label with type [1] is displayed
    Validate that the [Get your testing superhero on with the Sauce Labs bolt T-shirt. From American Apparel, 100% ringspun combed cotton, heather gray with red bolt.] text label with type [1] is displayed
    Validate that the [15.99] text label with type [1] is displayed
    Validate that the [ADD TO CART] button with type [2] is displayed
    Click the [<- Back] button where the button type is [2]
    Validate that the [Sauce Labs Bolt T-Shirt] inventory item card is displayed

Check if the "Sauce Labs Fleece Jacket" inventory item card contains the image, the correct description, "$49.99" price and "ADD TO CART" button
    Within The App
    Validate that the [Sauce Labs Fleece Jacket] inventory item card is displayed
    Wihtin The [Sauce Labs Fleece Jacket] Inventory Item Card
    Validate that the [sauce-pullover] image is displayed
    Validate that the [Sauce Labs Fleece Jacket] link with type [2] is displayed
    Validate that the [It's not every day that you come across a midweight quarter-zip fleece jacket capable of handling everything from a relaxing day outdoors to a busy day at the office.] text label with type [1] is displayed
    Validate that the [49.99] text label with type [1] is displayed
    Validate that the [ADD TO CART] button with type [2] is displayed

Check if clicking the "Sauce Labs Fleece Jacket" link opens the product page
    Within The App
    Validate that the [Sauce Labs Fleece Jacket] inventory item card is displayed
    Wihtin The [Sauce Labs Fleece Jacket] Inventory Item Card
    Validate that the [Sauce Labs Fleece Jacket] link with type [2] is displayed
    Click the [Sauce Labs Fleece Jacket] link where the link type is [2]
    Within The App
    Validate that the [<- Back] button with type [2] is displayed
    Validate that the [sauce-pullover] image is displayed
    Validate that the [Sauce Labs Fleece Jacket] text label with type [1] is displayed
    Validate that the [It's not every day that you come across a midweight quarter-zip fleece jacket capable of handling everything from a relaxing day outdoors to a busy day at the office.] text label with type [1] is displayed
    Validate that the [49.99] text label with type [1] is displayed
    Validate that the [ADD TO CART] button with type [2] is displayed
    Click the [<- Back] button where the button type is [2]
    Validate that the [Sauce Labs Fleece Jacket] inventory item card is displayed

Check if the "Sauce Labs Onesie" inventory item card contains the image, the correct description, "$7.99" price and "ADD TO CART" button
    Within The App
    Validate that the [Sauce Labs Onesie] inventory item card is displayed
    Wihtin The [Sauce Labs Onesie] Inventory Item Card
    Validate that the [red-onesie] image is displayed
    Validate that the [Sauce Labs Onesie] link with type [2] is displayed
    Validate that the [Rib snap infant onesie for the junior automation engineer in development. Reinforced 3-snap bottom closure, two-needle hemmed sleeved and bottom won't unravel.] text label with type [1] is displayed
    Validate that the [7.99] text label with type [1] is displayed
    Validate that the [ADD TO CART] button with type [2] is displayed

Check if clicking the "Sauce Labs Onesie" link opens the product page
    Within The App
    Validate that the [Sauce Labs Onesie] inventory item card is displayed
    Wihtin The [Sauce Labs Onesie] Inventory Item Card
    Validate that the [Sauce Labs Onesie] link with type [2] is displayed
    Click the [Sauce Labs Onesie] link where the link type is [2]
    Within The App
    Validate that the [<- Back] button with type [2] is displayed
    Validate that the [red-onesie] image is displayed
    Validate that the [Sauce Labs Onesie] text label with type [1] is displayed
    Validate that the [Rib snap infant onesie for the junior automation engineer in development. Reinforced 3-snap bottom closure, two-needle hemmed sleeved and bottom won't unravel.] text label with type [1] is displayed
    Validate that the [7.99] text label with type [1] is displayed
    Validate that the [ADD TO CART] button with type [2] is displayed
    Click the [<- Back] button where the button type is [2]
    Validate that the [Sauce Labs Onesie] inventory item card is displayed

Check if the "Test.allTheThings() T-Shirt (Red)" inventory item card contains the image, the correct description, "$15.99" price and "ADD TO CART" button
    Within The App
    Validate that the [Test.allTheThings() T-Shirt (Red)] inventory item card is displayed
    Wihtin The [Test.allTheThings() T-Shirt (Red)] Inventory Item Card
    Validate that the [red-tatt] image is displayed
    Validate that the [Test.allTheThings() T-Shirt (Red)] link with type [2] is displayed
    Validate that the [This classic Sauce Labs t-shirt is perfect to wear when cozying up to your keyboard to automate a few tests. Super-soft and comfy ringspun combed cotton.] text label with type [1] is displayed
    Validate that the [15.99] text label with type [1] is displayed
    Validate that the [ADD TO CART] button with type [2] is displayed

Check if clicking the "Test.allTheThings() T-Shirt (Red)" link opens the product page
    Within The App
    Validate that the [Test.allTheThings() T-Shirt (Red)] inventory item card is displayed
    Wihtin The [Test.allTheThings() T-Shirt (Red)] Inventory Item Card
    Validate that the [Test.allTheThings() T-Shirt (Red)] link with type [2] is displayed
    Click the [Test.allTheThings() T-Shirt (Red)] link where the link type is [2]
    Within The App
    Validate that the [<- Back] button with type [2] is displayed
    Validate that the [red-tatt] image is displayed
    Validate that the [Test.allTheThings() T-Shirt (Red)] text label with type [1] is displayed
    Validate that the [This classic Sauce Labs t-shirt is perfect to wear when cozying up to your keyboard to automate a few tests. Super-soft and comfy ringspun combed cotton.] text label with type [1] is displayed
    Validate that the [15.99] text label with type [1] is displayed
    Validate that the [ADD TO CART] button with type [2] is displayed
    Click the [<- Back] button where the button type is [2]
    Validate that the [Test.allTheThings() T-Shirt (Red)] inventory item card is displayed