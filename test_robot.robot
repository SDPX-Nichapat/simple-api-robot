*** Settings ***
Library           RequestsLibrary

*** Test Cases ***

GET /plus/10/20
    ${response}    GET    http://192.168.253.129:5000/plus/10/20
    Should Contain    ${response.content.decode('utf-8')}    10 + 20 = 30

GET /plus/0/20.5
    ${response}    GET    http://192.168.253.129:5000/plus/0/20
    Should Contain    ${response.content.decode('utf-8')}    0 + 20 = 20

GET /plus/-10/0
    ${response}    GET    http://192.168.253.129:5000/plus/-10/0
    Should Contain    ${response.content.decode('utf-8')}    -10 + 0 = -10

GET /hello/test
    ${response}    GET    http://192.168.253.129:5000/hello/test
    Should Contain    ${response.content.decode('utf-8')}    Hello test

GET /is_prime/1
    ${response}    GET    http://192.168.253.129:5000/is_prime/1
    Should Contain    ${response.content.decode('utf-8')}    false