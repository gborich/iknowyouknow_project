p = User.new
p.name = 'Василий Васильевич'
p.lastname = 'Смыслов'
p.login = "smislov"
p.password = "1234"
p.mail = 'hello@mail.ru'
p.phone = 89998887766
p.description = "champion of the world"
p.awards = "champion"
p.admin = ""
p.rating = 10
p.save

p = User.new
p.name = 'Lola'
p.lastname = 'Lolova'
p.login = "lolalol"
p.password = "12345"
p.mail = 'hello1@mail.ru'
p.phone = 89998887726
p.description = "champion of the world"
p.awards = "champion"
p.admin = ""
p.rating = 9
p.save

p = User.new
p.name = 'Garry'
p.lastname = 'Potter'
p.login = "gp"
p.password = "12345"
p.mail = 'hello12@mail.ru'
p.phone = 89998882726
p.description = "champion of the world"
p.awards = "champion"
p.admin = ""
p.rating = 10
p.save

p = Subject.new
p.name = 'Math'
p.description = 'about digit'

p = Subject.new
p.name = 'Russian'
p.description = 'about Russian language'

p = Service.new
p.name = 'Math 10class'
p.description = 'about digit'
p.price = 10000

p = Order.new
p.status = 'new'
p.comment = 'about Russian language'

p = Order.new
p.status = 'new'
p.comment = 'good'

p = Category.new
p.name = 'Buisiness'
p.description = 'about Buisiness'