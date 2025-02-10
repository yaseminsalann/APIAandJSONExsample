# APIAandJSONExsample
API (Application Programming Interface - Uygulama Programlama Arayüzü), farklı yazılım bileşenlerinin birbiriyle iletişim kurmasını sağlayan bir arayüzdür. Swift programlama dilinde API'ler, özellikle ağ istekleri yaparken, sistem bileşenlerine erişirken veya üçüncü taraf servislerle entegrasyon sağlarken kullanılır.

Swift'te API'ler genellikle RESTful web servisleri ile veri alışverişi yapmak için kullanılır. Örneğin, bir hava durumu uygulaması geliştiriyorsanız, hava durumu verilerini almak için bir API çağrısı yapabilirsiniz.
Swift'te API istekleri yapmak için URLSession, Alamofire (üçüncü taraf kütüphane) veya Swift Concurrency (async/await) gibi yöntemler kullanılır.
API, Swift’te veri alışverişi yapmamızı sağlayan bir arayüzdür.
URLSession veya async/await kullanarak API çağrıları yapılabilir.
Veriler genellikle JSON formatında gelir ve JSONDecoder ile çözümlenir.
Üçüncü taraf kütüphaneler (örneğin, Alamofire) daha kolay API entegrasyonu sağlayabilir.

JSON (JavaScript Object Notation), hafif, okunabilir ve kolay işlenebilir bir veri değişim formatıdır. JSON, özellikle web servisleri ve API'ler arasında veri iletmek için yaygın olarak kullanılır.

JSON, anahtar-değer (key-value) çiftlerinden oluşur ve iki temel veri yapısını destekler:
Nesne (Object) → {} süslü parantez içinde anahtar-değer çiftleri içerir.
Dizi (Array) → [] köşeli parantez içinde nesneleri veya değerleri tutar.

JSON’un Avantajları
✅ İnsan tarafından okunabilir
✅ Hafif ve verimli
✅ Dilde bağımsız
✅ Veri yapısını net bir şekilde tanımlar
✅ Kolayca işlenebilir ve dönüştürülebilir
JSON, günümüzde web servisleri, mobil uygulamalar, veritabanları ve IoT sistemlerinde yaygın olarak kullanılır.
