Feature: Exploring the youtube

Background:
Given I import scenarios from "Youtube Utilities/Youtubeutility.feature"
Given I assign "Chrome" to variable "browser"
Given I assign "https://www.youtube.com/" to variable "youtube"


Scenario: SearchBox 
Given I "open the browser and click on SearchBox"
	When I execute scenario "SearchBox "
# Once I see element "xPath://div[@id='nav-logo']" in web browser

And I "return to Youtube's home page"
When I execute scenario "Return To Home Page"
Then I wait 5 seconds

And I "navigate to Subsription"
When I execute scenario "Navigate to Subsription"
