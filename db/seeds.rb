# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Phone.create(
  name: 'Huawei P20',
  brand: 'Huawei',
  storage: 128,
  imei: '123456789101213',
  color: 'Blue'
)

Phone.create(
  name: 'Xiaomi Mi 6',
  brand: 'Xiaomi',
  storage: 64,
  imei: '123456789101213',
  color: 'Grey'
)

Phone.create(
  name: 'iPhone 12',
  brand: 'Apple',
  storage: 128,
  imei: '123456789101213',
  color: 'Blue'
)