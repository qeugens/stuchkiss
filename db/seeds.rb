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
users = User.create([
  {id: 1, username: "karinamulk", email: "karinamulk@hse.ru", isadmin: false, description: "Дизайнер, связаться со мной в тг @karinamulk", avatar: File.open(Rails.root.join('public', 'images', 'обложка.png'))}
  ])
collections = Collection.create([
  {id: 1, title: "Машины", description: "Красивые механизмы, машины и штуки с моторчиком", user_id: 1},
  {id: 2, title: "Граффити", description: "Рисуночки, которые я нахожу в родном городе", user_id: 1},
  {id: 3, title: "Катера", description: "Лодки, которыея нахожу в Сочи", user_id: 1}
  ])
items = Item.create([
  {id: 1, geotag: "Новосибирск, Ленинский район", note: "Были с бойфрендом в парке аттракционов", date: "8/10/2022", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/%D0%BE%D0%B1%D0%BB%D0%BE%D0%B6%D0%BA%D0%B0.png?raw=true"), collection_id: 1, user_id: 1},
  {id: 2, geotag: "Уфа, Советская площадь", note: "Прошлась в перерыве по центру и увидела знак", date: "22/12/2022", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/%D0%BE%D0%B1%D0%BB%D0%BE%D0%B6%D0%BA%D0%B0.png?raw=true"), collection_id: 2, user_id: 1},
  {id: 3, geotag: "Сочи, Морской порт", note: "Гуляли с семьей и увидели маленький катерок", date: "2/09/2001", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/%D0%BE%D0%B1%D0%BB%D0%BE%D0%B6%D0%BA%D0%B0.png?raw=true"), collection_id: 3, user_id: 1}
  ])
tags = Tag.create([
  {id: 1, title: "Машины", ispublic: true, user_id: 1},
  {id: 2, title: "Рисунки", ispublic: true, user_id: 1},
  {id: 3, title: "Лодки", ispublic: true, user_id: 1}
  ])
tagselecteds = Tagselected.create([
  {id: 1, tag_id: 1, item_id: 1},
  {id: 2, tag_id: 2, item_id: 2},
  {id: 3, tag_id: 3, item_id: 3}
  ])
subscriptions = Subscription.create([
  {id: 1, user_id: 1, collection_id: 1},
  {id: 2, user_id: 1, collection_id: 2},
  {id: 3, user_id: 1, collection_id: 3}
  ])
likes = Like.create([
  {id: 1, user_id: 1, item_id: 1},
  {id: 2, user_id: 1, item_id: 2},
  {id: 3, user_id: 1, item_id: 3}
  ])
favourites = Favourite.create([
  {id: 1, user_id: 1, item_id: 1},
  {id: 2, user_id: 1, item_id: 2},
  {id: 3, user_id: 1, item_id: 3}
  ])


puts "End"
