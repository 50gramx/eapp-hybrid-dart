Feature: App Launch on Web

  Scenario: User Launches the App on Web Successfully
    Given the user has the "50gramx" app installed
    When the user launches the app on the web
    Then the app's home screen should be displayed
#
#  Scenario: User Sees Loading Indicator During Web App Launch
#    Given the user has the "50gramx" app installed
#    When the user launches the app on the web
#    Then a loading indicator should be displayed
#    And the loading indicator should disappear after the app initializes
#
#  Scenario: App Successfully Initializes Platform Services on Web
#    Given the user has the "50gramx" app installed
#    When the user launches the app on the web
#    Then the app should initialize platform-specific services
#    And the initialization should be successful
#
#  Scenario: User Launches the App on Unsupported Web Browser
#    Given the user has the "50gramx" app installed
#    When the user tries to launch the app on an unsupported web browser
#    Then the app should display a message indicating the unsupported browser
#
#  Scenario: User Launches the App on a Slow Network
#    Given the user has the "50gramx" app installed
#    When the user launches the app on the web with a slow network connection
#    Then the app should handle slow network conditions gracefully
#    And display a message or indicator if necessary
#
#  Scenario: User Launches the App on the Web, But App Initialization Fails
#    Given the user has the "50gramx" app installed
#    When the user launches the app on the web and app initialization fails
#    Then the app should display an error message
#    And provide an option for the user to retry initialization
#
#  Scenario: User Launches the App on the Web, Then Switches to Dark Mode
#    Given the user has the "50gramx" app installed
#    When the user launches the app on the web
#    Then the app should initially use a light theme
#    When the user switches to dark mode
#    Then the app should switch to a dark theme
