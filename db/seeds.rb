# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Start"
Like.destroy_all
Subscription.destroy_all
Tagselected.destroy_all
Item.destroy_all
Collection.destroy_all
Tag.destroy_all
User.destroy_all
users = User.create([
  {id: 1, username: "John", email: "john@hse.ru", isadmin: false, description: "kiss my ass", avatar: File.open(Rails.root.join('public', 'images', 'обложка.png'))},
  {id: 2, username: "John II", email: "johnii@hse.ru", isadmin: true, description: "kiss my ass", avatar: File.open(Rails.root.join('public', 'images', 'обложка.png'))},
  {id: 3, username: "John III", email: "johniii@hse.ru", isadmin: false, description: "kiss my ass", avatar: File.open(Rails.root.join('public', 'images', 'обложка.png'))}
  ])
collections = Collection.create([
  {id: 1, title: "signs", description: "nice collection", user_id: 1},
  {id: 2, title: "signs", description: "nice collection", user_id: 2},
  {id: 3, title: "signs", description: "nice collection", user_id: 3}
  ])
items = Item.create([
  {id: 1, geotag: "homki", note: "joh", date: "11/09/2001", image: File.open(Rails.root.join('public', 'images', 'обложка.png')), collection_id: 1, user_id: 1},
  {id: 2, geotag: "homki", note: "joh", date: "11/09/2001", image: File.open(Rails.root.join('public', 'images', 'обложка.png')), collection_id: 2, user_id: 2},
  {id: 3, geotag: "homki", note: "joh", date: "11/09/2001", image: File.open(Rails.root.join('public', 'images', 'обложка.png')), collection_id: 3, user_id: 3}
  ])
tags = Tag.create([
  {id: 1, title: "marble", ispublic: true, user_id: 1},
  {id: 2, title: "marble", ispublic: true, user_id: 1},
  {id: 3, title: "marble", ispublic: true, user_id: 1}
  ])
tagselecteds = Tagselected.create([
  {id: 1, tag_id: 1, item_id: 1},
  {id: 2, tag_id: 2, item_id: 2},
  {id: 3, tag_id: 3, item_id: 3}
  ])
subscriptions = Subscription.create([
  {id: 1, user_id: 1, collection_id: 1},
  {id: 2, user_id: 2, collection_id: 1},
  {id: 3, user_id: 3, collection_id: 1}
  ])
likes = Like.create([
  {id: 1, user_id: 1, item_id: 1},
  {id: 2, user_id: 2, item_id: 2},
  {id: 3, user_id: 3, item_id: 3}
  ])


puts "End"
