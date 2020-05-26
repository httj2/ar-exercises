require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end 

@store1.employees.create(first_name: "Khurram", 
                         last_name: "Virani", 
                          hourly_rate: 60)
@store2.employees.create(first_name: "Theo", 
                         last_name: "Peep", 
                         hourly_rate: 60)
@store2.employees.create(first_name: "James", 
                         last_name: "Jim", 
                         hourly_rate: 40)
@store1.employees.create(first_name: "King", 
                         last_name: "Kong", 
                          hourly_rate: 100)

puts Store.count
puts Employee.count