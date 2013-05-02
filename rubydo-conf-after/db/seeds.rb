# encoding: utf-8
# Sample seed file for products application. Authored May 1st 2013
puts "Running sample seed file for Ruby.do conference"
puts "======= ====== ==== ==== === ======= =========="
puts ""
puts ""

  puts "Deleting previous database records..."
  puts "======== ======== ======== =========="
    Product.delete_all
    Review.delete_all
  puts "Previous records were deleted successfully!"

  puts "Uploading data..."
  puts "========= ======="
  puts ""

  puts "Generating Products..."

   one =  Product.create(
     :code => 'B002J9GDXI', 
     :name => 'Logitech G500 Programmable Gaming Mouse', 
     :price => '45.99',
     :description => "The Logitech Gaming Mouse G500 provides unparalleled precision, control, and comfort. It offers a gaming-grade laser that allows for smooth precision at any hand speed. Onboard memory lets you take your settings for your favorite titles wherever you go – with no added software. Personalized weight tuning of up to 27 grams gives you the feel you want and more control. The dual-mode scroll wheel provides click-to-click scrolling that's perfect for weapon selecting in games and the hyper-fast scrolling is ideal for flying through long web pages. On-the-fly adjustable dpi allows for precision targeting (200 dpi) to lightning fast maneuvers (up to 5700 dpi). And 10 programmable buttons gives you the ability to outmaneuver your opponent. The game is in your hands"
   )
   two = Product.create(
     :code => 'B004AM5RAW',
     :name => 'Razer Naga Special Edition - Molten',
     :price => '66.00',
     :description => "The Razer Naga Molten Special Edition features an exciting new look to the original award-winning and massively popular Razer Naga that shifts the balance between keyboard and mouse by putting an unprecedented number of in-game commands in one place. A multi-button thumb grid and Razer's MMO game interface add-on combine to place every command you need in the palm of your hand. An ergonomic form shaped to maximize ease of use lets you game in comfort for hours on end. With the Razer Naga SE, you will Get Imba."
   )

    three = Product.create(
      :code => 'B003L62T7W',
      :name => 'Logitech B100 Optical USB Mouse',
      :price => '8.19',
      :description => "Comfortable, ambidextrous design 800 dpi optical precision, 3 buttons Optical tracking, 800-dpi resolution"
    )

    four = Product.create(
      :code => 'B002Q4U5DK',
      :name => 'Razer Deathadder Infrared Gaming Mouse',
      :price => '63.49',
      :description => "The Razer DeathAdder is the weapon of choice for gamers seeking a combination of comfort and unbridled gaming precision. Enjoy extended gaming sessions in comfort with its right-handed ergonomic form factor crafted for the world of competitive gaming. When the difference between victory and defeat is determined in between heartbeats, the 3500dpi Razer Precision 3.5G infrared sensor translates your every movement into frags with pinpoint accuracy."
    )

    five = Product.create(
      :code => 'B004E4FY4U', 
      :name => 'ROCCAT Kova[+] Max Performance Gaming Mouse',
      :price => '44.99',
      :description => "Maximum Precision Pro-optic gaming sensor can be configured at 400, 800, 1600 or 3200dpi, EasyShift[+] button duplicator assign two function to the buttons for 8 additional functions, Feedback for in-game config changes, Optical sensor for up to 3200dpi"
    )

  puts "Products were created successfully"
  puts ""

  puts "Generating Reviews..."
    Review.create(:product_id => one.id, :title => "Best mouse yet", :description => "This is easily the best Logitech mouse yet. I own both the G5 and G9, and settled on the G5 as my primary mouse some time ago after hating the grip of the G9 (neither one felt natural to me). This was a problem, since I felt the G9 performed better but it just wasn't comfortable. As a result, I'm going to compare the G500 to the G5.")
    Review.create(:product_id => two.id, :title => "Mouse Review + G5 comparison", :description => "The Logitech G500 is the successor to the G5 laser gaming mouse. It is a well constructed mouse and features all the bells and whistles most high-end mouses will offer. I also own a Logitech G5 and many questions aimed at the G500 are whether or not it is worth upgrading from the G5.")
    Review.create(:product_id => three.id, :title => "Defective Left and Right mouse butons...Very Common Issue", :description => "I purchased this Razer Naga Mouse new back on March 10, 2010 for $80.00 from Amazon.com. I was very happy when I received this new mouse as I play online games, as well as general home office functions; I work from home a lot.Well, here I am today October 28, 2011, and my refurbished Razer Naga mouse is once again defective; left AND right mouse buttons are double and triple clicking AGAIN! This has been ongoing for almost 2 weeks now, and has gotten to the point of not being useable. I do NOT recommend this product at all. DO NOT BUY this Razer Naga mouse because it is not if, but when you will need a replacement.")
    Review.create(:product_id => three.id, :title => "Great mouse for a small price!", :description => "I chose this mouse for my laptop because it is cheap and it has good reviews. I like how it feels in my hand. It works very accurately and the pointer is not jumpy. Unbelievable that they can make this for $8.00! I enthusiastically recommend this mouse to anyone who needs a replacement.")
    Review.create(:product_id => three.id, :title => "Simple, Yet Effective", :description => "Every time I shop for a new mouse for myself I consider many different things, motion sensing system, clickability, reliability of the manufacturer, and of course special features. I for one have ALWAYS bought Logitech mice. They are a trusted manufacturer of peripherals and to be honest, they are some of the toughest pieces of hardware I have seen out there.")
    Review.create(:product_id => three.id, :title => "Great basic mouse.", :description => " purchased two of these mice for something less than ten bank notes apiece; one for my father and the other for a neighbor. This is a basic USB mouse with scroll wheel and middle button. It plug-n-played just fine under Windows XP and seems to work quite nicely. Other reviewers have criticized the light weight of the mouse, but I've come across even lighter mice and found that the B100 was not at all annoying to use. The weight seems perfect to me and comparable with other mice of this size. Some people have reported that this mouse is too small, but I found it normal in this regard and it fits my hand quite well. I think that almost all available mice are too small for long-term comfort. The only exceptions are insanely expensive. The B100 is certainly average in this regard.")
    Review.create(:product_id => three.id, :title => "Easy, inexpencive, and great", :description => "I am very pleased with this purchase. It was a great buy, especially for the price. I plugged it in, my lap top automatically recognized it, and I was instantly able to use it. It set up in less then 5 seconds. I am very pleased. This was exactly what I was looking for and I would recommend it to my friends and family")
    Review.create(:product_id => four.id, :title => "Razer brings you gaming to your hands", :description => "Would recommend this to anyone who wants quality and reliability, this is my second razer mouse and I've never had any problems.")

  puts "Reviews were created successfully"
  puts ""


puts "Seed data uploaded correctly to database"
puts "==== ==== ======== ========= == ========"
puts ""


