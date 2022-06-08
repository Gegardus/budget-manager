user1 = User.create!(name: 'Vahan', email: 'vahan@gmail.com', password: 'password')
user2 = User.create!(name: 'Ani', email: 'ani@gmail.com', password: 'password')
category1 = Category.create!(name: 'Fruit', icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRx9yONfXibkCWu8rbSNdki_GORiflSRVxlZw&usqp=CAU', user_id: user1.id )
category2 = Category.create!(name: 'Food', icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_vg9N3PlcJAjOIowhHKo5ePNJrXAmWC_7Iw&usqp=CAU', user_id: user1.id )
category3 = Category.create!(name: 'Energy', icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbk0rKfyKvtKq5eW0cNC2XVWpCRKKYVB4qRg&usqp=CAU', user_id: user2.id )
proceeding1 = Proceeding.create!(name: 'bananas', amount: 25, category: category1)
proceeding2 = Proceeding.create!(name: 'kiwi', amount: 30, category: category1)
proceeding3 = Proceeding.create!(name: 'cheken', amount: 25, category: category2)
proceeding4 = Proceeding.create!(name: 'orange', amount: 30, category: category3)

puts 'Seed data created successfully'