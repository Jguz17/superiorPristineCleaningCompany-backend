# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'test', password: '123')

Booking.create(user_id: 1, name: 'test booking', email: 'testemail@anon.com', phone: '5555555555', address: '123 test ave', datetime: '2020/9/6 23:54', message: 'trybuni')

AcceptedBooking.create(user_id: 1, name: 'test anon nookfd', email: 'yager@anon.com', phone: '1231231234', address: '123 tank ave', datetime: '2020/9/7 00:18', message: 'yeerrrrr')

Message.create(user_id: 1, name: 'test booking', email: 'testemail@anon.com', phone: '5555555555', content: 'lfibs ofbdfspnso b b')

Thrash.create(user_id: 1, name: 'dgd  bfsbouagshgwgp9 wh  w', email: 'mrbot@test.com', phone: '1231231234', address: '123 tank ave', datetime: '2020/9/7 02:14', content: 'yeerrrrr', thrash_type: 'message')
