# First Screen Assignments
This is the assignment for First Screen recruitment team


### Steps To Execute Automated Tests
* Install Ruby 1.9.3 +
* Install respective devkit
* Download the Project
* Go to the root of the project
* Type command $ cucumber
* This will execute tests in series
* To Execute features in parallel : go to the root of the folder $ rake parallel:features


#### Reports
* Right now this framework can generate json,xml and html report as per the cucumber.yml profile
* Example Reports can be found in report folder


#### CI : Jenkins:
* Highly compatible with Jenkins CI and we have cucumber.yml profile for same


**Assumption currently I binded driver with only firefox, later will provide the support for Remote execution + Rest of the browsers and even dockerized remote env for better CI/CD

### Supporting Documents
Please look into the documents folder for Test Plan Test Casess and Bug Report
