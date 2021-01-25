*** Settings ***
Documentation  More complex functions

Resource  ../Settings.robot

*** Keywords ***

Navigate to [${Url}] in [${Browser}] browser
    open browser  ${Url}  ${Browser}
    maximize browser window

Count the number of inventory item cards
    ${all_cards} =  set variable  ${Context}//div[@class='inventory_item']
    wait until element is visible  ${all_cards}
    ${num_cards} =  get element count  ${all_cards}
    [Return]  ${num_cards}

Count the number of cart item cards
    ${all_cards} =  set variable  ${Context}//div[@class='cart_item']
    wait until element is visible  ${all_cards}
    ${num_cards} =  get element count  ${all_cards}
    [Return]  ${num_cards}

Get price for inventory item
     ${price} =  get text  ${Context}//div[@class='inventory_item_price']
     ${price} =  get substring  ${price}  1
     ${price} =  convert to number  ${price}
     [Return]  ${price}

Get price for cart item
     ${price} =  get text  ${Context}//div[@class='cart_item_price']
     ${price} =  get substring  ${price}  1
     ${price} =  convert to number  ${price}
     [Return]  ${price}

Get total price
    ${price} =  get text  ${Context}//div[@class='summary_subtotal_label']
    ${price} =  get substring  ${price}  -5
    ${price} =  convert to number  ${price}
    [Return]  ${price}

Get name for inventory item
     ${name} =  get text  ${Context}//div[@class='inventory_item_name']
     [Return]  ${name}
