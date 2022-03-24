Feature: Variables 
# variables are case sensitive
#There are two types of variable in cycle
#1.Dollar variable: Accessible within Scenario(Denoted by $)
#2.Chevron variable: The variable which is accessible outside the Scenario(Denoted by <> angle brackt or Chevron)



Background: 
Given I assign "snehal" to variable "First_Name"
Then I assign "Pande" to variable "Last_Name"



@Dollar variable
Scenario: Dollar Variable
Given I assign "Snehal" to variable "First_Name"
	Then I assign "Pande" to variable "Last_Name"
	Then I echo $First_Name
	Then I echo $Last_Name
	Then I assign variable "Full_Name" by combining $First_Name " " $Last_Name

@Prompting_for_Variable
#Prompting for variable
Scenario: Variable Prompting
Given I assign 10 to variable "a"
Given I prompt "NAme" and assign user response to variable "User_Name"
Then I prompt "age" for integer and assign user response to variable "User_age"
Then I echo $User_Name
Then I echo $User_age


#Triple Quotes
@TripleQuotes
Scenario: Triple Quotes
Given I assign """"Hello"""" to variable "String"
Then I echo $String 

@Combiningvariable
Scenario:
Given I assign "Snehal" to variable "First_Name"
Given I assign "Pande" to variable "Last_Name"
Then I echo $First_Name
Given I assign variable "Name" by combining $First_Name "Name"
Then I echo $Name


#Chevron Variable
# To access the variable in another scenarios we use Chevron Variable
@Var
Scenario Outline: Scenout
Given I echo $FirstName
And i echo $LastName
Examples:
|FirstName|LastName|
|"Quality"|"Control"|
|"Quality"|"Check"|
|"Quality"|"Assurance"|

#other way to access chevron Variable


@CSVExample
Scenario Outline:
CSV Examples: Data/Name.csv
Given I assign all chevron variables to dollar variables
# Then  I echo <FirstName>
# Then I echo <LastName>
Then  I echo $FirstName
Then I echo $LastName


#Images
@Images
Scenario:Images
Given I open "chrome" web browser
Then I Navigate to "https://opensource-demo.orangehrmlive.com/ " in web browser
Then i see image "Image:Data/logo.png" in web browser within 10 seconds
Then I close web browser


@Chevron
Scenario:
Given I assign all chevron variables to dollar variables
Then I echo <First_Name>
Then I echo <Last_Name>













