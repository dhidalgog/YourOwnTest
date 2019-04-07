# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# r1 = Role.create({name: "Teacher", description: "Can manage evaluation, questions, answers and courses"})
# r2 = Role.create({name: "Student", description: "Can access to the available evaluations and answer them"})
# r3 = Role.create({name: "Admin", description: "Can perform any CRUD operation on any resource"})

u1 = User.create({name: "Daniel", last_name: "Hidalgo", email: "daniel@gmail.com", password: "12345678", password_confirmation: "12345678", role_id: 3})
