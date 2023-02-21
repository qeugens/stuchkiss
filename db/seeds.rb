# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Start"
Favourite.destroy_all
Like.destroy_all
Subscription.destroy_all
Tagselected.destroy_all
Item.destroy_all
Collection.destroy_all
Tag.destroy_all
User.destroy_all
# users = User.create([
#   {id: 4, username: "karinamulk", email: "karinamulk@hse.ru", isadmin: false, description: "Дизайнер, связаться со мной в тг @karinamulk", avatar: File.open(Rails.root.join('public', 'images', 'avatar.png')), password: "yourPassWord"},
#   {id: 2, username: "hautilus", email: "hautilus@hse.ru", isadmin: false, description: "kiss my ass", avatar: File.open(Rails.root.join('public', 'images', 'avatar.png')), password: "yourPassWord"},
#   {id: 3, username: "qeugens", email: "qeugens@hse.ru", isadmin: true, description: "я убью себя самого", avatar: File.open(Rails.root.join('public', 'images', 'avatar.png')), password: "yourPassWord"}
#   ])
collections = Collection.create([
  {id: 1, title: "Телефончики", description: "Девайс моих друзей", user_id: 4, cover: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/telephonchiki.png?raw=true")},
  {id: 2, title: "Стикеры", description: "Стикеры, которые я нахожу в родном городе", user_id: 4, cover: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/stikeri.png?raw=true")},
  {id: 3, title: "Упаковка", description: "Красивые упаковки из магазинов", user_id: 4, cover: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/upakovka.png?raw=true")}
  ])
items = Item.create([
  {id: 1, geotag: "Новосибирск, Ленинский район", note: "Были с бойфрендом в парке аттракционов", date: "8/10/2022", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/novosibirsk.png?raw=true"), collection_id: 1, user_id: 2},
  {id: 2, geotag: "Уфа, Советская площадь", note: "Прошлась в перерыве по центру и увидела знак", date: "22/12/2022", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/ufa.png?raw=true"), collection_id: 2, user_id: 4},
  {id: 3, geotag: "Сочи, Морской порт", note: "Гуляли с семьей и увидели маленький катерок", date: "2/09/2001", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/sochi.png?raw=true"), collection_id: 3, user_id: 3}
  ])
tags = Tag.create([
  {id: 1, title: "Машины", ispublic: true, user_id: 4},
  {id: 2, title: "Рисунки", ispublic: true, user_id: 4},
  {id: 3, title: "Лодки", ispublic: true, user_id: 4}
  ])
tagselecteds = Tagselected.create([
  {id: 1, tag_id: 1, item_id: 1},
  {id: 2, tag_id: 2, item_id: 2},
  {id: 3, tag_id: 3, item_id: 3}
  ])
subscriptions = Subscription.create([
  {id: 1, user_id: 4, collection_id: 1},
  {id: 2, user_id: 4, collection_id: 2},
  {id: 3, user_id: 4, collection_id: 3}
  ])
likes = Like.create([
  {id: 1, user_id: 4, item_id: 1},
  {id: 2, user_id: 4, item_id: 2},
  {id: 3, user_id: 4, item_id: 3}
  ])
favourites = Favourite.create([
  {id: 1, user_id: 4, item_id: 1},
  {id: 2, user_id: 4, item_id: 2},
  {id: 3, user_id: 4, item_id: 3}
  ])

puts "End"
