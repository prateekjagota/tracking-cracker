

Feature: Search Cars from Plus button
   As an app user
   I want to search for a specific car
   So that I can find the car I want quickly
   

 Given I am on Car Finder screen
   And I should see plus button on the Car Finder sceen
  When I tap on the plus button 
  Then I should see the plus button opens
   And I tap on back button plus button closes 

 Given I am on Car Finder Screen
  When I tap on plus button
   And I should see plus button opens 
   And I tap on the search button
  Then I should see Search Cars banner on the top
   And I fill car name to search for details
   And I should see the car details 