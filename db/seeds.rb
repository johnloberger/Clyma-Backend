User.destroy_all

user_a = User.create(first_name: 'John', last_name: 'Loberger', email: 'lol', username: 'jloberger15', avatar: 'https://icons.iconarchive.com/icons/treetog/junior/256/earth-icon.png', date_of_birth: '05/16/97', password: 'lol')
location_a = Location.create(user_id:user_a.id,name:'test',lat:45,lng:45)
