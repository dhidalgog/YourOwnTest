# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Question.destroy_all
# Category.destroy_all
# Course.destroy_all
# User.destroy_all
# Role.destroy_all

r1 = Role.create({name: "Teacher", description: "Can manage evaluation, questions, answers and courses"})
r2 = Role.create({name: "Student", description: "Can access to the available evaluations and answer them"})
r3 = Role.create({name: "Admin", description: "Can perform any CRUD operation on any resource"})

u1 = User.create({name: "Daniel", last_name: "Hidalgo", email: "admin@gmail.com", password: "123456", password_confirmation: "123456", role_id: 3})
u2 = User.create({name: "Daniel", last_name: "Hidalgo", email: "student@gmail.com", password: "123456", password_confirmation: "123456", role_id: 2})
u3 = User.create({name: "Daniel", last_name: "Hidalgo", email: "teacher@gmail.com", password: "123456", password_confirmation: "123456", role_id: 1})
