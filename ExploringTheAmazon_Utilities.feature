Feature: My Feature

#*************
Background:
Given I assign "Chrome" to variable "browser"
Given I assign "https://www.amazon.in/" to variable "dstWebPage"
#***************


# After Scenario: 
# Given I close web browser

@OpenBrowser
Scenario: Open Browser to Specified Page
#############################################################
# Description: Opens the specified web browser to a 
#     designated page on the internet
# Inputs:
# Required:
# browser - The name associated with the web browser of choice
# dstWebPage - The page the web browser will be navigated to
#############################################################
Given I open $browser web browser
When I navigate to $dstWebPage in web browser

@ReturnToAmazon
Scenario: Return to Amazon Homepage
#############################################################
# Description: Clicks on the Amazing Icon to return to the 
#     Amazon Homepage
# Inputs: None
# Note: You do not have to use the starter xPath below. It 
#     is only there to help you get started. 
#############################################################
Given I open $browser web browser

When I navigate to $dstWebPage in web browser

Then I click element "id:nav-logo-sprites" in web browser

@SearchForItem
Scenario: Search for Item
#############################################################
# Description: Searches for an item in the Amazong search bar
# Inputs: Create a variable so that you can reuse this
#     scenario for multiple items
# Note: You can search the Step Guide under the Help menu to 
#     find a step that takes a screenshot of the web browser
#############################################################
#****************
Given I open $browser web browser

When I navigate to $dstWebPage in web browser

	And I see element "id:twotabsearchtextbox" in web browser within 5 seconds
	And I wait 10 seconds
    
 #additional Steps
Then I type "Electronics Gadget" in element "id:twotabsearchtextbox" in web browser

	And I click element "id:nav-search-submit-button" in web browser

@BestSeller
Scenario: Navigate to Best Seller
#############################################################
# Description: Navigates to the Best Seller Menu
# 
# Inputs: None
# Note: The element for Best Seller menu is 
#     'a[text()='Best Sellers']' but that describes multiple
#     elements on the page, so we need to be more specific 
#     by first specifying a unique ancestor and then drilling
#     down into the specific element.
#############################################################
Given I open $browser web browser

When I navigate to $dstWebPage in web browser

Once I click element "xPath://*[@id='nav-xshop']/a[1]" in web browser
# Once I click element "xPath://div[@id= 'nav-xshop-container']//descendant::a[text()='Best Sellers']" in web browser
# Then I fail step with error message "replace this step with one that confirms we are on the Best Sellers page"

@NavigateToPrimeVideo
Scenario: Navigate to Prime Video
#############################################################
# Description: 
# 
# Inputs: None
# Note: 
#############################################################
# First I need to click on the "ALL" menu
# Then I need to click on the "Prime Video" submenu
# Finally I need to click on the "Prime Video" sub-submenu. The exact description of this element describes multiple elements, so I will need to find a unqiue ancestor or descendent and then drill towards this element.
# Then I verify I am on the correct page
################
Given I open $browser web browser

When I navigate to $dstWebPage in web browser

#clicking on All menu
Then I click element "className:hm-icon-label" in web browser

#Clicking on Prime video submenu
And I click element "xPath://div[text()='Amazon Prime Video']" in web browser

And I click element "xPath://a[text()='All Videos']" in web browser

And I verify scenario passed




#############
@NavigateToCart
Scenario:Navigate to Cart
#Need to click on Cart
#verify the basket is empty 
#Then I navigate to Select Address 

Given I open $browser web browser

When I navigate to $dstWebPage in web browser

And I click element "id:nav-cart-count-container" in web browser

	And I verify text "Your Amazon Basket is empty" is equal to "Your Amazon Basket is empty" ignoring case
    
And I click element "id:glow-ingress-line2" in web browser


