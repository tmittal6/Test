Feature: Make appointment for doctor

  Scenario: Login Portal
    *configure driver = {type ='chrome'}
    Given driver 'https://katalon-demo-cura.herokuapp.com/'
    * fullscreen()
    And click('#btn-make-appointment')
    And input('#txt-username', 'John Doe')
    And input('#txt-password', 'ThisIsNotAPassword')
    When click('#btn-login')
    Then match driver.url = 'https://katalon-demo-cura.herokuapp.com/#appointment'
