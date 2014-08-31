@EndtoEnd
Feature:Basic Navigation

@Android @EL-101


@Android @EL-102
  Scenario: To get the list from the Car Finder screen
    Given I tap on LeftMenu
     When I tap on CarFinder
      And I wait for 20 seconds
     Then I should see the CarFinder Listings
    

@Android @EL-103
  Scenario: Navigate to the More list
    Given I tap on LeftMenu 
     When I tap on More
      And I wait for 20 seconds
     Then I should see the More Listings

  
    

@Android @EL-104
  Scenario: Navigate to the Application  History list
    Given I tap on LeftMenu
     When I tap on Application History
      And I wait for 20 seconds
     Then I should see the Application History Listings



@Android @EL-105
  Scenario: Navigate to the Scan & Shop list
    Given I tap on LeftMenu
     When I tap on Scan & Shop
      And I wait for 20 seconds
     Then I should see the Scan & Shop Listings    
     Then I tap on BackButton


