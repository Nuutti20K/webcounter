*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When incremented by ten counter is ten
    Go To  ${HOME_URL}
    Input Text  amount  10
    Click Button  aseta
    Page Should Contain  nappia painettu 10 kertaa
    Click Button  Nollaa