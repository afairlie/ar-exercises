require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Employee(id: integer, store_id: integer, first_name: string, last_name: string, hourly_rate: integer, created_at: datetime, updated_at: datetime)

# Your code goes here ...
@store1.employees.create(first_name: 'Khurram', last_name: 'Virani', hourly_rate: 60)

@store1.employees.create(first_name: 'Stephen', last_name: 'Cat', hourly_rate: 65)

@store1.employees.create(first_name: 'Isabel', last_name: 'Dog', hourly_rate: 68)

@store1.employees.create(first_name: 'Komo', last_name: 'Dog', hourly_rate: 65)

@store2.employees.create(first_name: 'Max', last_name: 'Courteau', hourly_rate: 85)

@store2.employees.create(first_name: 'Ariane', last_name: 'Ingrid', hourly_rate: 85)

@store2.employees.create(first_name: 'Stu', last_name: 'Fairlie', hourly_rate: 85)