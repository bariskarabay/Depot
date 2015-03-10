#Depot6
       #Depot_6a
             #Ürünler projesinin ana yapısı rails kullanılarak oluşturuldu
             #Depot adında yeni bir rails projesi oluşturuldu
             rails new Depot
             rails generate scaffold Product title:string description:text image_url:string price:decimal
             rake db:migrate 
             #Varolan tüm kayıtları silerek, otomatik olarak bir kayıt eklendi (depot/db/seeds.rb)
             Produt.delete_all
             Produt.create(title: 'Ruby ile programlama', 
             description:
                %{<p>
                Ruby is the fastest growing bla bla bla bla bla bla
                  </p>},
             image_url: 'resim.jpg',
             price: 49.95)

             #Verileri eklemek üzere hazır tuttuk
             rake db:seed
             #Scaffold MVC yapısı oluşturuldu
             #Products tablosu oluşturuldu bu tablonun içerisinde title,description,image_url ve price alanları oluşturuldu
             #Migrate işlemi kullanılarak veritabanı kalıcı hale getirildi rake db:migrate
             #Proje test edildi
             #seed komutu kullanıldı
             #/db/seeds.rb dosyasının içeriği değiştirildi burada ilk önce tüm ürün bilgileri silindi daha sonra ise yeni bir ürün eklendi
             #Ekran da Resim verisi gösterildi
       #Depot_7b
             #Ürün eklemesi yapılırken Form kontrolleri (validation) kullanıldı
             #products_controller_test.rb dosyasında veri eklenerek proje test edildi.
             #product_test.rb dosyasında test validation işlemi yapıldı
             #Gerekli alanlar sağlandı
             #Price alanı sayısal veri tipi olarak değiştirildi ve sınır sayısı belirlendi
             #Resim uzantılarının kontroller yapıldı
             #Birim testi için product_test dosyasına yeni alanlar eklendi
       #Depot_8c
             #Store adında yeni bir controller oluşturuldu.
             #index adında yeni bir view oluşturuldu
             #root to: kullanılarak ana sayfa store/index olarak değiştirildi     
             #index action ı oluşturuldu
             #order metotdu çağrılarak veriler anasayfada sıralandı
             #css düzenlemesi yapıldı
             #fonksiyonel test kullanılarak veri bütünlüğü test edildi (controller test)
       #Depot_9D
             #cart ismin de yeni scaffold eklendi
             #migrate edilerek veriler kalıcı hale getirildi
                  