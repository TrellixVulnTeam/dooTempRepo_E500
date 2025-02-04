*** Settings ***
Documentation  resource  file for amazon.robot
Library  SeleniumLibrary

*** Keywords ***
Search for Products
    go to  http://www.amazon.com
    wait until page contains  Your Amazon.com
    input text  id=twotabsearchtextbox  Ferrari 458
#    press key  \\13
    click element  id=nav-search-submit-text
    wait until page contains  result for "Ferrari 458"
#    click link  css=#result_C a.s-access-detail-page
#    SendKeys.SendKeys("{ENTER}")

Select Prodcut from Search Results
    wait until page contains  Back to search results
    click button  id=add-to-cart-button

Add Product to Cart
    wait until page contains  1 item added to Cart
    click link  Proceed to Checkout

Begin Checkout
    page should contain element  ap_signila_pagelet_title
    element text should be  ap_signila_pagelet_title  Sign In
