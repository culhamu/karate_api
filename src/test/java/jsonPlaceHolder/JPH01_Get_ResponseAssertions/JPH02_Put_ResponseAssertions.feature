
  Feature:JPH02 PUT request sonucu donen response bilgilerini test eder

    Scenario:TC002 Put request sonucu donen response expected degerlere uygun olmali

      Given url 'https://jsonplaceholder.typicode.com'
      Then path '/posts/70'
      And request
    """
    {
    "id": 70,
    "title": "Ahmet",
    "body": "Merhaba",
    "userId": 10
    }
    """
      Then method PUT
      When status 200
      And match header Content-Type == 'application/json; charset=utf-8'
      Then match header Connection == 'keep-alive'
      And assert response.title == 'Ahmet'
      And assert response.body == 'Merhaba'
      And assert response.id == '70'
      And assert response.userId == '10'