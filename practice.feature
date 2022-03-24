
Feature: Demoqa

After Scenario: 
Given I close web browser

@Locators
Scenario: Demoqa Login

GIVEN I OPEN "CHROME" WEB BROWSER
Then I navigate to "https://demoqa.com/" in web browser
Then I maximize web browser
Then I press keys CTRL+ESC
And I wait 10 seconds
Then I scroll to element "xPath://h5[text()='Forms']" in web browser 
Then I wait 10 seconds
Then I click element "xPath://h5[text()='Forms']" in web browser
Then I verify text "Forms" is equal to "Forms" ignoring case
Then I click element "xPath://span[text()='Practice Form']" in web browser


@image 
Scenario: Image 
Given I open "Chrome" web browser
Then I navigate to "https://demoqa.com/" in web browser
Then I wait 5 seconds
And I see image "Image:Demo\Datasets" in web browser within 10 seconds
And I verify file "D:\CYCLE\Practice\Demo\Datasets" exists within 10 seconds
#And I see image "Image:Demo\Datasets" in web browser within 10 seconds
Then I save screenshot


@Tabs
Scenario:Handling Tabs
Given i open "Chrome" web browser
Then I navigate to "https://demoqa.com/" in web browser
And I press keys CTRL+T
And I Navigate to "https://opensource-demo.orangehrmlive.com/" in web browser within 10 seconds
Then I navigate Back in web browser
Then I navigate forward in web browser
# Then I execute 

@Variable
Scenario:
Given I assign "String" to variable "Substring"
Then I echo $Substring
Given I prompt "First Number" and assign user response to variable "First_Name"
Then I echo $First_Name
Given I prompt "Last Name" and assign user response to variable "Last_Name"
Then I echo $Last_Name
Given I prompt "age" for integer and assign user response to variable "Age"
Then I echo $Age

@And
Scenario: Use of And condition
Given I assign "Cycle" to variable "a"
Given I assign "Cycle" to variable "b"
And I assign "CycleLab" to variable "c"

If I verify text $a is equal to $b ignoring case
And I verify text $a is not equal to $c ignoring case
Then I echo "data matched"
Endif


@combiningVariableValue
Scenario: Combining Variable using FULL
Given I assign "Snehal" to variable "FirstName"
And I assign "Pande" to variable "LastName"

# When I assign variable "Full_Name" by combining $FirstName " " $LastName
# And I Echo $Full_Name
And I Echo $FirstName
Then i assign variable "MiddleName" by combining $FirstName " " $LastName
Then I echo $MiddleName


@practice
Scenario: Practice
Given I open "chrome" web browser
Then I navigate to "https://www.techlistic.com/p/selenium-practice-form.html" in web browser
Then I type "Snehal" in element "xPath://input[@name='firstname']" in web browser within 10 seconds


@wordpad
Scenario: 
Given I "Open Wordpad"
When I press keys "Ctrl+Esc"
And I wait 5 seconds
Then I enter "Wordpad"
And I wait 5 seconds
Then I press keys "Enter"
Then I echo "Wordpad"
And I press keys "ALT+F4"
And I echo " Close Wordpad"
Then I execute scenario "Practice"

@a
Scenario: 
Given I "Open Wordpad"
When I press keys CTRL+ESC
Then I wait 10 seconds
Then I enter "Wordpad"
Then I press keys ALT+F4

@comparison
Scenario:
Given I assign 10 to variable "var1"
Given I assign 20 to variable "var2"
then I verify number 10 is not equal to 20
then I verify number 20 is greater than 20
Then I echo $var1

@Dollarvariable
Scenario:
Given I assign "Snehal" to variable "First_Name"
Then I assign "Pande" to variable "Last_name"
Then I echo $First_Name
Then i echo $Last_name

@verifytext
Scenario: 
Given I assign "web" to variable "a"
Then I assign "web" to variable "b"
And I assign "Testing" to variable "c" 

If I verify text $a is equal to $b ignoring case
And I verify text $a is not equal to $c ignoring case
Then I echo "data matched"
Endif

@Chevron
Scenario Outline: Scenario Outline Name
Then I echo <FirstName>
Then I echo <LastName>
Examples:
| FirstName |LastName|
|"Snehal"|"Pande"|
|"Quality"|"Assurance"|

@wordpad
Scenario:
Given i "Open wordpad"
Then I press keys ENTER

Then I Press Keys ALT+F4


#####Looping concepts
@ifelse
Scenario:
Given I assign 10 to variable "a"
And I assign 20 to variable "b"

   If I verify number 20 is greater than 10
   Then i echo "data matched"
   And I echo $a  
   Else i echo "data mismatch"
Endif



@While
Scenario: 
Given I assign 1 to variable "a"
While I verify number $a is less than 5
EndWhile
Then I increase variable $a by 2