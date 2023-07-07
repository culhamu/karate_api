
  Feature: JPH05 Kullanici disaridan kullandigi JSON objelerinde degisiklik yapabilmeli


    Background:

      * def baseUrl = 'https://jsonplaceholder.typicode.com'
      * def pathParams = '/posts/70'
      * def requestBody = read("requestBody.json")
      * def expectedResponse = read("expectedResponse.json")

    @api
    Scenario:TC005 Disaridan Json obje kullanilabilmeli

      Given url baseUrl
      And path pathParams
      Then set requestBody.title = 'Karate'
      Then set requestBody.body = 'Framework'
      And request requestBody
      When method PUT
      Then status 200
      And match header Content-Type == 'application/json; charset=utf-8'
      And match header Connection == 'keep-alive'
      Then set expectedResponse.title = 'Karate'
      Then set expectedResponse.body = 'Framework'
      And match response == expectedResponse