#
# OPTOMIZE GARY'S INSTAGRAM
#
Feature: Optomize Gary's instagram
  Scenario: Login to Gary's Instagram and like n posts
    Given I have gary credentials 
    When I login with gary credentials
    Then I like "15" post on feed 

  #Scenario: Login to Gary's Instagram and comment on n posts

  #Scenario: Login to Gary's Instagram and follow n acccounts
