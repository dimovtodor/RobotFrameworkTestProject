*** Settings ***
Documentation  App validations

Resource  ../Settings.robot

*** Keywords ***

Validate that the SwagLabs logo is displayed
    wait until element is visible  ${Context}//div[contains(@class, 'logo')]

Validate that the [${Image}] image is displayed
    wait until element is visible  ${Context}//img[contains(@src, '${Image}')]

Validate that the side menu is displayed
    wait until element is visible  ${Context}//div[@class='bm-menu-wrap']

Validate that the side menu is not displayed
    wait until element is not visible  ${Context}//div[@class='bm-menu-wrap']

Validate that the [${Label}] text label with type [${LabelType}] is displayed
    run keyword if  ${LabelType} == 1  wait until element is visible  ${Context}//div[text()="${Label}"]
    run keyword if  ${LabelType} == 2  wait until element is visible  ${Context}//h2[text()='${Label}']

# Fields
Validate that the [${Field}] field is displayed
    wait until element is visible  ${Context}//input[@data-test='${Field}']

Validate that a [${Placeholder}] placeholder is displayed in the [${Field}] field
    ${get_placeholder} =  get element attribute  ${Context}//input[@data-test='${Field}']  placeholder
    should be equal as strings  ${Placeholder}  ${get_placeholder}

Validate that the character limit of the [${Field}] text field where the value is [${Value}] is working
    ${get_value_back} =  get substring  ${Value}  0  -1
    log  ${get_value_back}
    log  ${51_Characters}
    textfield value should be  ${Context}//input[@data-test='${Field}']  ${get_value_back}
# ===============

# Buttons and Links
Validate that the [${Button}] button with type [${ButtonType}] is displayed
    run keyword if  ${ButtonType} == 1  wait until element is visible  ${Context}//input[@value='${Button}']
    run keyword if  ${ButtonType} == 2  wait until element is visible  ${Context}//button[text()='${Button}']
    run keyword if  ${ButtonType} == 3  wait until element is visible  ${Context}//a[text()='${Button}']
    run keyword if  ${ButtonType} == 4  wait until element is visible  ${Context}//*[@data-icon='${Button}']
    run keyword if  ${ButtonType} == 5  wait until element is visible  ${Context}//button[@class='${Button}']
    run keyword if  ${ButtonType} == 6  wait until element is visible  ${Context}//a[contains(@class, '${Button}')]
    run keyword if  ${ButtonType} == 7  wait until element is visible  ${Context}//button[text()='${Button}']/ancestor::div[1]

Validate that the [${Link}] link with type [${LinkType}] is displayed
    run keyword if  ${LinkType} == 1  wait until element is visible  ${Context}//a[text()='${Link}']
    run keyword if  ${LinkType} == 2  wait until element is visible  ${Context}//div[text()='${Link}']  #/parent::a
# ===============

# Error messages
Validate that the [${ErrorType}][${ErrorMessage}] error message is displayed
    wait until element is visible  ${Context}//h3[normalize-space(text()[1])='${ErrorType}' and text()[2]='${ErrorMessage}']

Validate that the [${ErrorType}][${ErrorMessage}] error message is not displayed
    wait until element is not visible  ${Context}//h3[normalize-space(text()[1])='${ErrorType}' and text()[2]='${ErrorMessage}']
# ===============

# Cards
Validate that the card with number [${Number}] is displayed
    ${num} =  evaluate  ${Number} + ${1}
    wait until element is visible  ${Context}//div[@class='inventory_item'][${num}] | ${Context}//div[@class='cart_item'][${num}]

Validate that the [${ItemName}] inventory item card is displayed
    wait until element is visible  ${Context}//div[text()='${ItemName}']/ancestor::div[@class='inventory_item']

Validate that the [${ItemName}] cart item card is displayed
    wait until element is visible  ${Context}//div[text()='${ItemName}']/ancestor::div[@class='cart_item']

Validate that the [${ItemName}] cart item card is not displayed
    wait until element is not visible  ${Context}//div[text()='${ItemName}']/ancestor::div[@class='cart_item']
# ===============

# Sorting
Validate that the sorting dropdown button is displayed
    wait until element is visible  ${Context}//select[@class='product_sort_container']

Validate that the [${Option}] sorting option is displayed
    wait until element is visible  ${Context}//option[text()='${Option}']

Validate that the products are sorted by name A to Z
    ${cards_num} =  Count the number of inventory item cards
    ${list} =  create list
    FOR     ${item}  IN RANGE  ${cards_num}
        Within The App
        Validate that the card with number [${item}] is displayed
        Within The Inventory Item Card With Number [${item}]
        ${name} =  Get name for inventory item
        append to list  ${list}  ${name}
    END
    log  ${list}
    ${sorted_list} =  copy list  ${list}
    sort list  ${sorted_list}
    log  ${sorted_list}
    lists should be equal  ${list}  ${sorted_list}

Validate that the products are sorted by name Z to A
    ${cards_num} =  Count the number of inventory item cards
    ${list} =  create list
    FOR     ${item}  IN RANGE  ${cards_num}
        Within The App
        Validate that the card with number [${item}] is displayed
        Within The Inventory Item Card With Number [${item}]
        ${name} =  Get name for inventory item
        append to list  ${list}  ${name}
    END
    log  ${list}
    ${sorted_list} =  copy list  ${list}
    sort list  ${sorted_list}
    reverse list  ${sorted_list}
    log  ${sorted_list}
    lists should be equal  ${list}  ${sorted_list}

Validate that the products are sorted by price low to high
    ${cards_num} =  Count the number of inventory item cards
    ${list} =  create list
    FOR     ${item}  IN RANGE  ${cards_num}
        Within The App
        Validate that the card with number [${item}] is displayed
        Within The Inventory Item Card With Number [${item}]
        ${price} =  Get price for inventory item
        append to list  ${list}  ${price}
    END
    log  ${list}
    ${sorted_list} =  copy list  ${list}
    sort list  ${sorted_list}
    log  ${sorted_list}
    lists should be equal  ${list}  ${sorted_list}

Validate that the products are sorted by price high to low
    ${cards_num} =  Count the number of inventory item cards
    ${list} =  create list
    FOR     ${item}  IN RANGE  ${cards_num}
        Within The App
        Validate that the card with number [${item}] is displayed
        Within The Inventory Item Card With Number [${item}]
        ${price} =  Get price for inventory item
        append to list  ${list}  ${price}
    END
    log  ${list}
    ${sorted_list} =  copy list  ${list}
    sort list  ${sorted_list}
    reverse list  ${sorted_list}
    log  ${sorted_list}
    lists should be equal  ${list}  ${sorted_list}
# ===============

# Checkout
Validate that the total price of the items is correct
    ${cards_num} =  Count the number of cart item cards
    ${total} =  set variable  0.00
    ${computed_total} =  Get total price
    FOR     ${item}  IN RANGE  ${cards_num}
        Within The App
        Validate that the card with number [${item}] is displayed
        Within The Cart Item Card With Number [${item}]
        ${price} =  Get price for inventory item
        ${total} =  evaluate  ${total} + ${price}
    END
    log  ${computed_total}
    log  ${total}
    should be equal as numbers  ${computed_total}  ${total}

# ===============
