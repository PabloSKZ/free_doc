# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

spec = ['Dentist', 'Generalist', 'Cardiologist', 'Podologist', 'Proctologist']

100.times do
  doc = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: spec[rand(5)], zip_code: Faker::Address.zip)
  pat = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  app = Appointment.create!(date: Faker::Date.in_date_period, doctor: doc, patient: pat)
end