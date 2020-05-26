require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :hourly_rate, numericality: { :greater_than_or_equal_to => 40, :less_than_or_equal_to => 200}
end

class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { :greater_than_or_equal_to => 0 }
end

puts "Enter store name"
user_input = gets.chomp

store = Store.create(name: "#{user_input}")

store.errors.full_messages.each do |err|
  puts "#{err} Must have other informaton"
end