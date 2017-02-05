Feature: Validate Navigation Bars, Menu and Links 
@Chrome @Firefox
Scenario: Verify all eight navigation bars and buttons are displayed 
	Given User is on Home page 
	Then User can see "Product" navigation bar 
	And User can see "Industry" navigation bar 
	And User can see "Solutions" navigation bar 
	And User can see "Clients" navigation bar 
	And User can see "Resources" navigation bar 
	And User can see "Company" navigation bar 
	And User can see "Get a Demo" navigation button 
	And User can see "FREE TRIAL" navigation button 
	
@Chrome @Firefox
Scenario: Verify that the menu items of Product navigation bar are displayed 
	Given User is on Home page 
	When User clicks on "Product" navigation bar 
	Then User can see "Asset Management" menu item 
	And User can see "Mobile Applications" menu item 
	And User can see "Scheduling and Dispatch" menu item 
	And User can see "Work Order Management" menu item 
	And User can see "Customer Portal" menu item 
	And User can see "Barcode Scanner" menu item 
 
 @Chrome @Firefox @HighPriority
 Scenario: Verify that the Asset Management link is working as it should be
 	Given User is on Home page
 	When User clicks on "Product" navigation bar
 	And User clicks on "Asset Management" menu item
 	Then User is on the "Asset Management" webpage