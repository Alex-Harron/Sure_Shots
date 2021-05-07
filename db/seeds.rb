# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.create(name: 'Mavricks V Clippers', home: 'Mavricks', visitor: 'Clippers', home_img: 'https://upload.wikimedia.org/wikipedia/en/thumb/9/97/Dallas_Mavericks_logo.svg/1024px-Dallas_Mavericks_logo.svg.png', visitor_img: 'https://upload.wikimedia.org/wikipedia/en/thumb/b/bb/Los_Angeles_Clippers_%282015%29.svg/1024px-Los_Angeles_Clippers_%282015%29.svg.png')
Game.create(name: 'Heat V Magic', home: 'Heat', visitor: 'Magic', home_img: 'https://upload.wikimedia.org/wikipedia/en/thumb/f/fb/Miami_Heat_logo.svg/800px-Miami_Heat_logo.svg.png', visitor_img: 'https://upload.wikimedia.org/wikipedia/en/thumb/1/10/Orlando_Magic_logo.svg/1280px-Orlando_Magic_logo.svg.png')
Game.create(name: 'Blazers V Bucks', home: 'Blazers', visitor: 'Bucks', home_img: 'https://upload.wikimedia.org/wikipedia/en/thumb/2/21/Portland_Trail_Blazers_logo.svg/1024px-Portland_Trail_Blazers_logo.svg.png', visitor_img: 'https://upload.wikimedia.org/wikipedia/en/thumb/4/4a/Milwaukee_Bucks_logo.svg/800px-Milwaukee_Bucks_logo.svg.png')
Game.create(name: 'Lakers V Warriors', home: 'Lakers', visitor: 'Warriors', home_img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Los_Angeles_Lakers_logo.svg/1920px-Los_Angeles_Lakers_logo.svg.png', visitor_img: 'https://upload.wikimedia.org/wikipedia/en/thumb/0/01/Golden_State_Warriors_logo.svg/800px-Golden_State_Warriors_logo.svg.png')
Game.create(name: 'Nets V Rockets', home: 'Nets', visitor: 'Rockets', home_img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Brooklyn_Nets_newlogo.svg/800px-Brooklyn_Nets_newlogo.svg.png', visitor_img: 'https://upload.wikimedia.org/wikipedia/en/thumb/2/28/Houston_Rockets.svg/800px-Houston_Rockets.svg.png')
Game.create(name: 'Wizards V Suns', home: 'Wizards', visitor: 'Suns', home_img: 'https://upload.wikimedia.org/wikipedia/en/thumb/0/02/Washington_Wizards_logo.svg/1024px-Washington_Wizards_logo.svg.png', visitor_img: 'https://upload.wikimedia.org/wikipedia/en/thumb/d/dc/Phoenix_Suns_logo.svg/1024px-Phoenix_Suns_logo.svg.png')