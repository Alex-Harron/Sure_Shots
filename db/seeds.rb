# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.create(name: 'Mavricks V Clippers', home: 'Mavricks', visitor: 'Clippers', home_img: 'https://upload.wikimedia.org/wikipedia/en/thumb/9/97/Dallas_Mavericks_logo.svg/1200px-Dallas_Mavericks_logo.svg.png', visitor_img: 'https://upload.wikimedia.org/wikipedia/en/thumb/b/bb/Los_Angeles_Clippers_%282015%29.svg/1024px-Los_Angeles_Clippers_%282015%29.svg.png')
Game.create(name: 'Heat V Magic', home: 'Mavricks', visitor: 'Clippers', home_img: 'https://upload.wikimedia.org/wikipedia/en/thumb/9/97/Dallas_Mavericks_logo.svg/1200px-Dallas_Mavericks_logo.svg.png', visitor_img: 'https://upload.wikimedia.org/wikipedia/en/thumb/b/bb/Los_Angeles_Clippers_%282015%29.svg/1024px-Los_Angeles_Clippers_%282015%29.svg.png')
Game.create(name: 'Grizzlys V Bucks', home: 'Mavricks', visitor: 'Clippers', home_img: 'https://upload.wikimedia.org/wikipedia/en/thumb/9/97/Dallas_Mavericks_logo.svg/1200px-Dallas_Mavericks_logo.svg.png', visitor_img: 'https://upload.wikimedia.org/wikipedia/en/thumb/b/bb/Los_Angeles_Clippers_%282015%29.svg/1024px-Los_Angeles_Clippers_%282015%29.svg.png')

Bet.delete_all
