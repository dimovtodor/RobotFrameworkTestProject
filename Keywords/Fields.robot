*** Settings ***
Documentation  App fields

Resource  ../Settings.robot

*** Keywords ***

Enter [${Value}] in the [${Field}] field
    input text  ${Context}//input[@data-test='${Field}']  ${Value}

Clear the [${Field}] field
    press keys  ${Context}//input[@data-test='${Field}']  BACKSPACE

Click the [${Button}] button where the button type is [${ButtonType}]
    run keyword if  ${ButtonType} == 1  click element  ${Context}//input[@value='${Button}']
    run keyword if  ${ButtonType} == 2  click element  ${Context}//button[text()='${Button}']
    run keyword if  ${ButtonType} == 3  click element  ${Context}//a[text()='${Button}']
    run keyword if  ${ButtonType} == 4  click element  ${Context}//*[@data-icon='${Button}']
    run keyword if  ${ButtonType} == 5  click element  ${Context}//button[@class='${Button}']
    run keyword if  ${ButtonType} == 6  click element  ${Context}//a[contains(@class, '${Button}')]
    run keyword if  ${ButtonType} == 7  click element  ${Context}//button[text()='${Button}']/ancestor::div[1]

Click the sorting dropdown button
    click element  ${Context}//select[@class='product_sort_container']

Click the [${Option}] sorting option
    click element  ${Context}//option[text()='${Option}']

Click the [${Link}] link where the link type is [${LinkType}]
    run keyword if  ${LinkType} == 1  click element  ${Context}//a[text()='${Link}']
    run keyword if  ${LinkType} == 2  click element  ${Context}//div[text()='${Link}']  #/parent::a