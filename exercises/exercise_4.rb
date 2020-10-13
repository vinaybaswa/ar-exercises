require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
store = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
store = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each { |store| puts "#{store.name} #{store.annual_revenue}" }

@womens_stores_revenue_upto_million = Store.where(womens_apparel: true, annual_revenue: 0..999999)
@womens_stores_revenue_upto_million.each { |store| puts "#{store.name} #{store.annual_revenue}" }