# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create name: 'Ismael', status: :active, kind: :admin, unit: :Sesc_Juazeiro,  email: 'ismael@teste.com', password: 123456
User.create name: 'Alice', status: :active, kind: :supervision, unit: :Sesc_Juazeiro,  email: 'alice@teste.com', password: 123456
User.create name: 'Sayonara', status: :active, kind: :unit_manager, unit: :Sesc_Juazeiro,  email: 'sayonara@teste.com', password: 123456
User.create name: 'Samia', status: :active, kind: :program_manager, unit: :Sesc_Juazeiro,  email: 'samia@teste.com', password: 123456
User.create name: 'Saulo', status: :active, kind: :technicianm, unit: :Sesc_Juazeiro,  email: 'saulo@teste.com', password: 123456