require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Product ozellikleri bos bırakılamaz" do 
  	product=Product.new
  	assert product.invalid?
  	assert product.errors[:title].any?
  	assert product.errors[:description].any?
  	assert product.errors[:price].any?
  	assert product.errors[:image_url].any?
  end
  test "product price must be positive" do
  	product=Product.new(title: "My book title",
                        description: "yyy",
                        image_url: "resim.jpg")
    product.price=-1
    assert product.invalid?
    assert_equal ["negatif deger girmeyiniz"],
       product.errors[:price]
    product.price=0
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
       product.errors[:price]

    product.price=1
    assert product.valid? 
    end                          
end