require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
puts total_revenue

num_stores = Store.count

average_revenue = total_revenue / num_stores
puts average_revenue

num_stores_over_one_million = Store.where("annual_revenue > :annual_revenue", {annual_revenue: 1000000}).count
puts num_stores_over_one_million