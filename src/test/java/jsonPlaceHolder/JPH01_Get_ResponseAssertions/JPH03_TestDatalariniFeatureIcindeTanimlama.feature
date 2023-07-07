
  Feature: JPH03 Kullanici Test Datalarini Feature icinde testten once tanimlar

    Background: Test datalarini tanımlama

      * def baseUrl = 'https://jsonplaceholder.typicode.com'
      * def pathParams = '/posts/70'
      * def requestBody =
    """
    {
    "id": 70,
    "title": "Ahmet",
    "body": "Merhaba",
    "userId": 10
    }
    """
      * def expectedResponseBody =

    """
    {
    "id": 70,
    "title": "Ahmet",
    "body": "Merhaba",
    "userId": 10
    }
    """

    Scenario: TC003 Background kullanimi

      Given url baseUrl
      And path pathParams
      And request requestBody
      When method PUT
      Then status 200
      And match header Content-Type == 'application/json; charset=utf-8'
      And match header Connection == 'keep-alive'
      
      And match response == expectedResponseBody



