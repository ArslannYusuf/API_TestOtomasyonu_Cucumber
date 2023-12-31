Feature:

  @Api @smoke @regression
  Scenario:

    Given Kullanici "jPHBaseUrl" base URL'ini kullanir
    Then Path parametreleri icin "posts/70" kullanir
    And POST request icin "Yusuf","Never Back Down",10 70 bilgileri ile request body olusturur
    And jPH server a POST request gonderir ve testleri yapmak icin response degerini kaydeder
    Then jPH respons'da status degerinin 200
    And jPH respons'da content type degerinin "application/json; charset=utf-8"
    And jPH respons daki "Connection" header degerinin "keep-alive"
    Then response attribute degerlerinin "Yusuf","Never Back Down",10 70