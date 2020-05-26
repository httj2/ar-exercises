require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

total = Store.sum("annual_revenue");
puts "total = #{total}"

average = Store.average("annual_revenue");
puts "average = #{average}"

over_1m = Store.where("annual_revenue > 1000000").count
puts "#{over_1m}"