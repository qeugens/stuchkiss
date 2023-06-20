# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Start"
# Favourite.destroy_all
# Like.destroy_all
# Subscription.destroy_all
Tagselected.destroy_all
Item.destroy_all
Collection.destroy_all
Tag.destroy_all
User.destroy_all
Reportit.destroy_all
Reportcol.destroy_all
users = User.create([
  {id: 8, username: "qeugens", email: "qeugens@hse.ru", isadmin: true, description: "я убью себя самого", avatar: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/mashaavatar.png?raw=true"), password: "yourPassWord"},
  {id: 1, username: "hautilusthehuman", email: "hautilusthehuman@hse.ru", isadmin: false, description: "для красоты", avatar: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/avatardanil.png?raw=true"), password: "yourPassWord1"},
  {id: 2, username: "thedoglady", email: "thedoglady@hse.ru", isadmin: false, description: "люблю собак", avatar: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/avatarleah.png?raw=true"), password: "yourPassWord2"},
  {id: 3, username: "sugumisu", email: "sugumisu@hse.ru", isadmin: false, description: "у меня красивая ава", avatar: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/avatarpolina.png?raw=true"), password: "yourPassWord3"},
  {id: 4, username: "esdnt", email: "esdnt@hse.ru", isadmin: false, description: "я зайка", avatar: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/avatardanya.png?raw=true"), password: "yourPassWord4"},
  {id: 5, username: "nadyakitt", email: "nadyakitt@hse.ru", isadmin: false, description: "у меня самая большая коллекция жаб", avatar: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/avatarnadya.png?raw=true"), password: "yourPassWord5"},
  {id: 6, username: "ttovarisch", email: "ttovarisch@hse.ru", isadmin: false, description: "гений кода", avatar: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/avatarpolinas.png?raw=true"), password: "yourPassWord6"},
  {id: 7, username: "m1d45", email: "m1d45@hse.ru", isadmin: false, description: "куратор шд", avatar: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/avatarvadim.png?raw=true"), password: "yourPassWord7"},
  {id: 9, username: "karinamulk", email: "karinamulk@hse.ru", isadmin: false, description: "моя фантазия закончилась", avatar: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/avatar.png?raw=true"), password: "yourPassWord9"}
  ])
collections = Collection.create([
  {id: 1, title: "Оружие", description: "Пистолеты, автоматы и другие разные пушки — пушка! Хочу собрать коллекцию со всеми видами боевой техники, но не буду забывать про интересные игрушечные предметы, они тоже меня вдохновляют", user_id: 1, cover: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/stgun1.png?raw=true")},
  {id: 2, title: "Руки вверх", description: "Царапины, порезы, кровь, гематомы — для меня это эстетика. В коллекции я собираю увечья, которые наношу себе и замечаю на других. Наслаждайся, если ты такой же сумасшедший", user_id: 9, cover: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/stblood1.png?raw=true")},
  {id: 3, title: "Упаковка", description: "Фоткаю прикольные пачки чипсов и дошиков, а потом ем. Ну вообще в какой-то момент всё пошло не по плану, и тут появились пачки туалетных таблеток и разных несъедобных объектов, ну да ладно", user_id: 2, cover: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/st6.png?raw=true")},
  {id: 4, title: "Город", description: "Собираю коллекцию разных городских артефактов, которые встречаю на улице. Многие из них так одиноко стоят и лежат в разных местах, никому не нужные, что их становится жаль. Хочется подарить им хотя бы немного внимания", user_id: 3, cover: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/st1.png?raw=true")},
  {id: 5, title: "Мотоциклы", description: "Когда был в Тайланде, влюбился в эстетику мотоциклов и байков, и теперь не могу остановиться фоткать их даже в Москве. Держите меня семеро, иначе я заполоню штучкис такими фотками ", user_id: 1, cover: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/st2.png?raw=true")},
  {id: 6, title: "Камешки", description: "В центре внимания коллекции — камни разных видов. Здесь есть и скромные серенькие камушки с пляжа, и завораживающие куски кварца и малахита. Считаю, что каждый из них по своему прекрасен", user_id: 4, cover: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/st5.png?raw=true")}
  ])
items = Item.create([
  {id: 1, geotag: "Краснодар — Затон", note: ".", date: "20 октября 2022 г.", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/stgun1.png?raw=true"), collection_id: 1, user_id: 1},
  {id: 2, geotag: "Москва — Октябрьская", note: ".", date: "25 октября 2022 г.", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/stgun2.png?raw=true"), collection_id: 1, user_id: 1},
  {id: 3, geotag: "Москва, возле дома", note: ".", date: "1 ноября 2022 г.", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/stgun3.png?raw=true"), collection_id: 1, user_id: 1},
  {id: 4, geotag: "Лес за мкадом", note: ".", date: "12 ноября 2022 г.", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/stgun4.png?raw=true"), collection_id: 1, user_id: 1},
  {id: 5, geotag: "Московский Кремль", note: ".", date: "23 ноября 2022 г.", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/stgun5.png?raw=true"), collection_id: 1, user_id: 1},

  {id: 6, geotag: "Тёмная душа", note: ".", date: "23 февраля 2023 г.", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/stblood1.png?raw=true"), collection_id: 2, user_id: 9},
  {id: 7, geotag: "Южный мост", note: ".", date: "25 февраля 2023 г.", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/stblood2.png?raw=true"), collection_id: 2, user_id: 9},
  {id: 8, geotag: "Тёмная душа", note: ".", date: "29 февраля 2023 г.", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/stblood3.png?raw=true"), collection_id: 2, user_id: 9},
  {id: 9, geotag: "Тюмень — Пушкинская", note: ".", date: "2 марта 2023 г.", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/stblood4.png?raw=true"), collection_id: 2, user_id: 9},
  {id: 10, geotag: "Тюмень — мой дом", note: ".", date: "5 марта 2023 г.", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/stblood5.png?raw=true"), collection_id: 2, user_id: 9},
  {id: 11, geotag: "В лучах солнца", note: ".", date: "11 марта 2023 г.", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/stblood6.png?raw=true"), collection_id: 2, user_id: 9},
  {id: 12, geotag: "Парк культуры", note: ".", date: "30 марта 2023 г.", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/stblood7.png?raw=true"), collection_id: 2, user_id: 9},

  {id: 13, geotag: "Уфа, Советская площадь", note: "Прошлась в перерыве по центру и увидела знак", date: "22 декабря 2022 г.", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/ufa.png?raw=true"), collection_id: 4, user_id: 3},
  {id: 14, geotag: "Сочи, Сёрф", note: "Зашла в перерыве на кофе", date: "10 января 2023 г.", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/st1.png?raw=true"), collection_id: 3, user_id: 2},
  {id: 15, geotag: "Паттайа, главная улица", note: ".", date: "21 января 2023 г.", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/st2.png?raw=true"), collection_id: 5, user_id: 1},
  {id: 16, geotag: "Сочинский дендрарий", note: ".", date: "30 марта 2023 г.", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/st3.png?raw=true"), collection_id: 4, user_id: 3},
  {id: 17, geotag: "Москва — Арбат", note: ".", date: "1 апреля 2023 г.", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/st4.png?raw=true"), collection_id: 4, user_id: 3},
  {id: 18, geotag: "Супермаркет в Тайланде", note: ".", date: "20 января 2023 г.", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/st5.png?raw=true"), collection_id: 3, user_id: 2},
  {id: 19, geotag: "Сочи, Морской порт", note: "Гуляли с семьей и увидели маленький катерок", date: "2 сентября 2022 г.", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/sochi.png?raw=true"), collection_id: 5, user_id: 1}
  ])

tags = Tag.create([
  {id: 1, title: "Автомат", ispublic: true, user_id: 8},
  {id: 2, title: "Чёрный", ispublic: true, user_id: 8},
  {id: 3, title: "Война", ispublic: true, user_id: 8},
  {id: 4, title: "Оружие", ispublic: true, user_id: 8},
  {id: 5, title: "Кровь", ispublic: true, user_id: 8},
  {id: 6, title: "Эстетика", ispublic: true, user_id: 8},
  {id: 7, title: "Маникюр", ispublic: true, user_id: 8},
  {id: 8, title: "Раны", ispublic: true, user_id: 8},
  {id: 9, title: "Упаковка", ispublic: true, user_id: 8},
  {id: 10, title: "Жёлтый", ispublic: true, user_id: 8},
  {id: 11, title: "Банан", ispublic: true, user_id: 8},
  {id: 12, title: "Магазин", ispublic: true, user_id: 8}
  ])

tagselecteds = Tagselected.create([
  {id: 1, tag_id: 1, item_id: 1},
  {id: 2, tag_id: 1, item_id: 2},
  {id: 3, tag_id: 1, item_id: 3},
  {id: 4, tag_id: 1, item_id: 4},
  {id: 5, tag_id: 1, item_id: 5},
  {id: 6, tag_id: 2, item_id: 1},
  {id: 7, tag_id: 2, item_id: 2},
  {id: 8, tag_id: 2, item_id: 3},
  {id: 9, tag_id: 2, item_id: 4},
  {id: 10, tag_id: 2, item_id: 5},
  {id: 11, tag_id: 3, item_id: 1},
  {id: 12, tag_id: 3, item_id: 2},
  {id: 13, tag_id: 3, item_id: 3},
  {id: 14, tag_id: 3, item_id: 4},
  {id: 15, tag_id: 3, item_id: 5},
  {id: 16, tag_id: 4, item_id: 1},
  {id: 17, tag_id: 4, item_id: 2},
  {id: 18, tag_id: 4, item_id: 3},
  {id: 19, tag_id: 4, item_id: 4},
  {id: 20, tag_id: 4, item_id: 5},

  {id: 21, tag_id: 5, item_id: 6},
  {id: 22, tag_id: 5, item_id: 7},
  {id: 23, tag_id: 5, item_id: 8},
  {id: 24, tag_id: 5, item_id: 9},
  {id: 25, tag_id: 5, item_id: 10},
  {id: 26, tag_id: 5, item_id: 11},
  {id: 27, tag_id: 5, item_id: 12},
  {id: 28, tag_id: 6, item_id: 6},
  {id: 29, tag_id: 6, item_id: 7},
  {id: 30, tag_id: 6, item_id: 8},
  {id: 31, tag_id: 6, item_id: 9},
  {id: 32, tag_id: 6, item_id: 10},
  {id: 33, tag_id: 6, item_id: 11},
  {id: 34, tag_id: 6, item_id: 12},
  {id: 35, tag_id: 7, item_id: 6},
  {id: 36, tag_id: 7, item_id: 7},
  {id: 37, tag_id: 7, item_id: 8},
  {id: 38, tag_id: 7, item_id: 9},
  {id: 39, tag_id: 7, item_id: 10},
  {id: 40, tag_id: 7, item_id: 11},
  {id: 41, tag_id: 7, item_id: 12},
  {id: 42, tag_id: 8, item_id: 6},
  {id: 43, tag_id: 8, item_id: 7},
  {id: 44, tag_id: 8, item_id: 8},
  {id: 45, tag_id: 8, item_id: 9},
  {id: 46, tag_id: 8, item_id: 10},
  {id: 47, tag_id: 8, item_id: 11},
  {id: 48, tag_id: 8, item_id: 12},

  {id: 49, tag_id: 9, item_id: 14},
  {id: 50, tag_id: 9, item_id: 17},
  {id: 51, tag_id: 10, item_id: 14},
  {id: 52, tag_id: 10, item_id: 17},
  {id: 53, tag_id: 11, item_id: 14},
  {id: 54, tag_id: 11, item_id: 17},
  {id: 55, tag_id: 12, item_id: 14},
  {id: 56, tag_id: 12, item_id: 17}
  
  ])

# users = User.create([
#   {id: 4, username: "karinamulk", email: "karinamulk@hse.ru", isadmin: false, description: "Дизайнер, связаться со мной в тг @karinamulk", avatar: File.open(Rails.root.join('public', 'images', 'avatar.png')), password: "yourPassWord"},
#   {id: 2, username: "hautilus", email: "hautilus@hse.ru", isadmin: false, description: "kiss my ass", avatar: File.open(Rails.root.join('public', 'images', 'avatar.png')), password: "yourPassWord"},
#   {id: 3, username: "qeugens", email: "qeugens@hse.ru", isadmin: true, description: "я убью себя самого", avatar: File.open(Rails.root.join('public', 'images', 'avatar.png')), password: "yourPassWord"}
#   ])
# collections = Collection.create([
#   {id: 1, title: "Телефончики", description: "Девайс моих друзей", user_id: 9},
#   {id: 2, title: "Стикеры", description: "Стикеры, которые я нахожу в родном городе", user_id: 9},
#   {id: 3, title: "Упаковка", description: "Красивые упаковки из магазинов", user_id: 9}
#   ])
# items = Item.create([
#   {id: 1, geotag: "Новосибирск, Ленинский район", note: "Были с бойфрендом в парке аттракционов", date: "8/10/2022", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/novosibirsk.png?raw=true"), collection_id: 1, user_id: 2},
#   {id: 2, geotag: "Уфа, Советская площадь", note: "Прошлась в перерыве по центру и увидела знак", date: "22/12/2022", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/ufa.png?raw=true"), collection_id: 2, user_id: 4},
#   {id: 3, geotag: "Сочи, Морской порт", note: "Гуляли с семьей и увидели маленький катерок", date: "2/09/2001", image: URI.open("https://github.com/qeugens/stuchkiss/blob/main/public/images/sochi.png?raw=true"), collection_id: 3, user_id: 3}
#   ])
# tags = Tag.create([
#   {id: 1, title: "Машины", ispublic: true, user_id: 4},
#   {id: 2, title: "Рисунки", ispublic: true, user_id: 4},
#   {id: 3, title: "Лодки", ispublic: true, user_id: 4}
#   ])
# tagselecteds = Tagselected.create([
#   {id: 1, tag_id: 1, item_id: 1},
#   {id: 2, tag_id: 2, item_id: 2},
#   {id: 3, tag_id: 3, item_id: 3}
#   ])
# subscriptions = Subscription.create([
#   {id: 1, user_id: 4, collection_id: 1},
#   {id: 2, user_id: 4, collection_id: 2},
#   {id: 3, user_id: 4, collection_id: 3}
#   ])
# likes = Like.create([
#   {id: 1, user_id: 4, item_id: 1},
#   {id: 2, user_id: 4, item_id: 2},
#   {id: 3, user_id: 4, item_id: 3}
#   ])
# favourites = Favourite.create([
#   {id: 1, user_id: 4, item_id: 1},
#   {id: 2, user_id: 4, item_id: 2},
#   {id: 3, user_id: 4, item_id: 3}
#   ])
reportits = Reportit.create([
  {id: 1, user_id: 3, item_id: 1, number: 'S256-230623', reason: 'Продажа запрещённых товаров', object:'Фотография'},
  {id: 2, user_id: 5, item_id: 6, number: 'S255-230623', reason: 'Самоубийство или селфхарм', object:'Фотография'},

  {id: 3, user_id: 6, item_id: 2, number: 'S254-230623', reason: 'Жестокость или опасные организации', object:'Описание'},
  {id: 4, user_id: 3, item_id: 16, number: 'S253-220623', reason: 'Контент для взрослых', object:'Тэг'},
  {id: 5, user_id: 4, item_id: 3, number: 'S252-220623', reason: 'Продажа запрещённых товаров', object:'Фотография', status: 'accepted'},
  {id: 19, user_id: 5, item_id: 18, number: 'S251-220623', reason: 'Спам', object:'Фотография', status: 'declared'}, 
  {id: 7, user_id: 1, item_id: 14, number: 'S250-210623', reason: 'Нарушение авторских прав', object:'Фотография', status: 'accepted'},
  {id: 8, user_id: 3, item_id: 8, number: 'S249-200623', reason: 'Самоубийство или селфхарм', object:'Описание'},
  {id: 9, user_id: 8, item_id: 13, number: 'S248-200623', reason: 'Контент для взрослых', object:'Описание'},
  {id: 10, user_id: 4, item_id: 9, number: 'S247-200623', reason: 'Спам', object:'Тэг', status: 'accepted'},
  {id: 11, user_id: 7, item_id: 6, number: 'S246-190623', reason: 'Контент для взрослых', object:'Тэг'},
  {id: 12, user_id: 2, item_id: 1, number: 'S245-190623', reason: 'Продажа запрещённых товаров', object:'Фотография'},
  {id: 13, user_id: 5, item_id: 10, number: 'S244-180623', reason: 'Нарушение авторских прав', object:'Фотография', status: 'declared'},
  {id: 14, user_id: 6, item_id: 11, number: 'S243-180623', reason: 'Дискриминация или оскорбление', object:'Описание', status: 'declared'},
  {id: 15, user_id: 3, item_id: 12, number: 'S242-180623', reason: 'Пропаганда вредных привычек', object:'Описание'},
  {id: 16, user_id: 2, item_id: 5, number: 'S241-180623', reason: 'Ложная информация', object:'Фотография', status: 'accepted'},
  {id: 17, user_id: 2, item_id: 15, number: 'S240-170623', reason: 'Жестокость или опасные организации', object:'Тэг', status: 'declared'},
  {id: 18, user_id: 4, item_id: 17, number: 'S239-170623', reason: 'Ложная информация', object:'Описание', status: 'accepted'},
  {id: 6, user_id: 8, item_id: 4, number: 'S238-170623', reason: 'Жестокость или опасные организации', object:'Тэг'}


  ])

reportcols = Reportcol.create([
  {id: 1, user_id: 4, collection_id: 2, number: 'С132-230623', reason: 'Самоубийство или селфхарм', object:'Описание'},

  {id: 2, user_id: 1, collection_id: 1, number: 'C131-230623', reason: 'Ложная информация', object:'Описание'},
  {id: 3, user_id: 2, collection_id: 3, number: 'C130-230623', reason: 'Жестокость или опасные организации', object:'Описание', status: 'accepted'},
  {id: 4, user_id: 3, collection_id: 4, number: 'C129-220623', reason: 'Нарушение авторских прав', object:'Штучкисы'},
  {id: 5, user_id: 4, collection_id: 5, number: 'C128-220623', reason: 'Дискриминация или оскорбление', object:'Штучкисы', status: 'declared'},
  {id: 6, user_id: 5, collection_id: 6, number: 'C127-210623', reason: 'Спам', object:'Название'},
  {id: 7, user_id: 5, collection_id: 2, number: 'C126-210623', reason: 'Пропаганда вредных привычек', object:'Штучкисы'},
  {id: 8, user_id: 6, collection_id: 1, number: 'C125-200623', reason: 'Контент для взрослых', object:'Штучкисы', status: 'accepted'},
  {id: 9, user_id: 7, collection_id: 3, number: 'C124-200623', reason: 'Продажа запрещённых товаров', object:'Описание'},
  {id: 10, user_id: 8, collection_id: 4, number: 'C123-200623', reason: 'Самоубийство или селфхарм', object:'Штучкисы'},
  {id: 11, user_id: 8, collection_id: 5, number: 'C122-200623', reason: 'Ложная информация', object:'Название'},
  {id: 12, user_id: 1, collection_id: 6, number: 'C121-190623', reason: 'Спам', object:'Описание'},
  {id: 13, user_id: 2, collection_id: 1, number: 'C120-180623', reason: 'Ложная информация', object:'Штучкисы', status: 'declared'},
  {id: 14, user_id: 6, collection_id: 2, number: 'C119-180623', reason: 'Самоубийство или селфхарм', object:'Описание'}
 ])

puts "End"
