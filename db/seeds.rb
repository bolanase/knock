100.times do |i|
  Product.create :name => "Product #{i}", :price => rand(100)
end