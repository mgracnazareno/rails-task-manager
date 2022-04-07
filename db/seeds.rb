# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database'
Task.destroy_all

puts 'Creating Tasks...'
final_project = { title: 'Rails Project', details: 'Deadline is on the 14th of April', completed: true }
tire_change = { title: 'Summer Tire Change', details: 'Set an appointment to the dealers', completed: true }

[final_project, tire_change].each do |attributes|
  task = Task.create!(attributes)
  puts "Created #{task.title}"
end
puts 'Finished'
