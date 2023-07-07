
  Feature: JPH01 Kullanici Get request sorgusu donen response kontrol eder

    Scenario: TC01 Get request'e donen response'in beklenilen özelliklerde olmasi gerekir
      
      Given url 'https://jsonplaceholder.typicode.com/posts/44'
      When method GET
      Then status 200
      Then match  header Content-Type == 'application/json; charset=utf-8'
      And match response.userId == 5
      Then assert response.title == 'optio dolor molestias sit'