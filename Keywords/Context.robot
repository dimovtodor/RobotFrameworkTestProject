*** Settings ***
Documentation  Different reusable contexts

*** Keywords ***
Within The App
    ${Context} =  set variable  ${Empty}
    set global variable  ${Context}

Within The Side Menu
    ${Context} =  set variable  //div[@class='bm-menu-wrap']
    set global variable  ${Context}

Within The Sorting Dropdown Menu
    ${Context} =  set variable  //select[@class='product_sort_container']
    set global variable  ${Context}

Within The Inventory Item Card With Number [${Number}]
    ${num} =  evaluate  ${Number} + ${1}
    ${Context} =  set variable  //div[@class='inventory_item'][${num}]
    set global variable  ${Context}

Within The Cart Item Card With Number [${Number}]
    ${num} =  evaluate  ${Number} + ${1}
    ${Context} =  set variable  //div[@class='cart_item'][${num}]
    set global variable  ${Context}

Wihtin The [${ItemName}] Inventory Item Card
    ${Context} =  set variable  //div[text()='${ItemName}']/ancestor::div[@class='inventory_item']
    set global variable  ${Context}

Within The [${ItemName}] Cart Item Card
    ${Context} =  set variable  //div[text()='${ItemName}']/ancestor::div[@class='cart_item']
    set global variable  ${Context}
