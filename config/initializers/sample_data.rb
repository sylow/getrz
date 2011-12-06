module Sample
  PRODUCTS =[
              {:id => 1,
               :name => "D90",
               :description=> "Newly designed Nikon DX-format CMOS image sensor with 12.3 effective megapixels and Integrated Dust Reduction System. Incredibly low-noise performance throughout a wide sensitivity range of ISO 200 to 3200; can be set to ISO 6400 equivalent",
               :image => "/products/product_d90.png"
              },
              { :id          => 2,
                :name        => "D3000",
                :description => "New Guide mode provides in-camera assistance for making camera settings and utilizing professional techniques. Large 3.0-in., approx. 230k-dot LCD with brightness adjustment. Nikon DX-format CCD image sensor, 10.2 effective megapixels. Integrated Dust Reduction System. Nikon's exclusive EXPEED image processing system.",
                :image => "/products/product_d3000.png"
              },
              { :id          => 3,
                :name        => "D31000",
                :description => "D3100 employs Nikon's latest breakthrough technology to deliver superb results. A newly developed DX-format CMOS sensor with 14.2 effective megapixels works in tandem with new EXPEED 2 image processing engine to produce highly detailed images containing rich tonal gradations and faithful color.",
                :image => "/products/product_d3100.png"
              },
              { :id          => 4,
                :name        => "D5100",
                :description => "The D5100 employs an image sensor equivalent to that of the higher-class model, D7000. Furthermore, image processing engine 'EXPEED 2' achieves high image quality, high-speed image processing and multiple functions.",
                :image => "/products/product_d5100.png"
              }
  ]
  OFFERS = [
              { :id=>1, :price=>14.95, :conditions => ["Guarantee 3 years", "Free shipping"], :vendor => "Vendor 1",
                :description=>"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's"
              },
              { :id=>2, :price=>15.95, :conditions => ["Guarantee 3 years", "Free shipping"], :vendor => "Vendor 2",
                :description=>"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's"
              },
              { :id=>3, :price=>16.95, :conditions => ["Guarantee 3 years", "Free shipping"], :vendor => "Vendor 3",
                :description=>"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's"
              },
              { :id=>4, :price=>17.00, :conditions => ["Guarantee 3 years", "Don't ship to China"], :vendor => "Vendor 4",
                :description=>"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's"
              }


            ]
end
