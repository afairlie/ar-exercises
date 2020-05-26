require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employee < ActiveRecord::Base
  validates :first_name, :last_name, :store, presence: true
  validates :hourly_rate, numericality: { 
    only_integer: true,
    greater_than_or_equal_to: 40,
    less_than_or_equal_to: 200 }
end

class Store < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { 
    only_integer: true,
    greater_than_or_equal_to: 0}
end

@new_store = Store.create(name: 'B', annual_revenue: 3000000, mens_apparel: true, womens_apparel: true).valid?

if (!@new_store)
  print 'Please enter a store name: '
  re_name = gets.chomp
end

store = Store.create(name: re_name)

if (store.errors)
  store.errors.messages.each do |k, v|
    print "#{k} "
    puts v
  end
end

# p Store.find_by(name: 'B')
