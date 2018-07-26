# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do |index|
  Part.create(part_number: "part n#{index + 1}")
end

3.times do |index|
  assembly = Assembly.create(name: "assembly n#{index + 1}")
  2.times do
    assembly.parts.push(Part.all.sample)
  end
end

