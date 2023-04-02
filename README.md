# VincaCareAssignment

UI and API Testing Assignment.
This project created with Ruby to simplify the development and make the project more readable.

## Tech/Framework used

This project is a great example with some of the popular test automation concepts:

1. Cucumber automation framework
2. Gherkin with Cucumber integration to create feature files by product 
3. Page object models project structure
4. Option to run automation script on server by different tags (see cucumber.yml file)
5. Creating Screenshots in case if test scenario failed for debugging
6. Generating html reports after automation run


## Features

This project includes three features files to cover UI and API automation process.

### api_testing.feature
API testing - positive and negative cases.

Positive Case:
GET request to weather API - parsing the body responce we find the humidity level for the given cities. 
This feature file build as Scenario Online to scale the testing approach.

Negative Case:
GET request to weather API - asking information for the incorrect city ID to receive 400.

### find_zip_code.feature 
Finding zip code for the given location on USPS web site.
This feature scenario also includes parametrazation implementation and also used different ways to find locators (id, tag_name). 
This code implementaion has selection the given parameter from the dropdown list.

### login.feature
Login with the test account credentials on USPS web site. Used parametrization test scenario concept and assertion.


## How to Use?

Download the code on your local machine.

Ruby ver. 2.6.3

Install ruby gems mention in Gemfile.

Download geckodriver to run on Firefox or chromedriver to run on Chrome.


## Tests

Run in terminal:
cucumber --format html --out report.html --format pretty
