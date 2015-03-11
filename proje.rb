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

             #Sayfa da resim gösterimi (/app/views/products/index.html/erb)
             <td><%= image_tag(product.image_url, class: 'list_image') %></td>
                                         
       #Depot_7b
             #Ürün eklemesi yapılırken Form kontrolleri (validation) kullanıldı
             validates :title, :description, :image_url, presence: true
             validates :price, numericality: {greater_than_or_equal_to: 0.01}
             validates :title, uniqueness: true
             validates :image_url, allow_blank: true, format: {
             with: %r{\.(gif|jpg|png)\Z}i,
             message: 'Resim yolunu dogru yazınız '}
             # /test/controllers/products_controller_test.rb dosyasında bazı veriler eklenerek geçerlilik kontrolü yapılmıştır.
       
                @product = products(:one)
                @update = {
                title: 'Baris',
                description: 'Karabay Software!',
                image_url: 'baris.jpg',
                price: 20.7}
                
               
             #products_controller_test.rb dosyasında veri eklenerek proje test edildi.
             #product_test.rb dosyasında test validation işlemi yapıldı
             #Gerekli alanlar sağlandı
             #Price alanı sayısal veri tipi olarak değiştirildi ve sınır sayısı belirlendi
             #Resim uzantılarının kontroller yapıldı
             #Birim testi için product_test dosyasına yeni alanlar eklendi
       #Depot_8c
             #Store adında yeni bir controller oluşturuldu.
              rails generate controller Store index
             #index adında yeni bir view oluşturuldu
             #Ana sayfa store/index olarak değiştirildi (config/routes.rb)   
              root to: 'store#index', as: 'store' 
             #index action ı oluşturuldu ve veriler anasayfada sıralandı
              def index
                  @produts = Produt.order(:title)
              end
             #css düzenlemesi yapıldı
             #fonksiyonel test kullanılarak veri bütünlüğü test edildi (controller test)
       #Depot_9D
             #cart ismin de yeni scaffold eklendi
             #migrate edilerek veriler kalıcı hale getirildi
                  