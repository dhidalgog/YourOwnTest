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
User.destroy_all
Role.destroy_all


# Roles
r1 = Role.create({name: "Teacher", description: "Can manage evaluation, questions, answers and courses"})
r2 = Role.create({name: "Student", description: "Can access to the available evaluations and answer them"})
r3 = Role.create({name: "Admin", description: "Can perform any CRUD operation on any resource"})
# Users
u1 = User.create({name: "Daniel", last_name: "Hidalgo", email: "admin@gmail.com", password: "123456", password_confirmation: "123456", role_id: r3.id})
u2 = User.create({name: "Daniel", last_name: "Hidalgo", email: "student@gmail.com", password: "123456", password_confirmation: "123456", role_id: r2.id})
u3 = User.create({name: "Daniel", last_name: "Hidalgo", email: "teacher@gmail.com", password: "123456", password_confirmation: "123456", role_id: r1.id})
# Evaluations
e1= Evaluation.create(name: "Maths1", description: "Additions for course 'x'", user_id: u3.id)
e2= Evaluation.create(name: "Maths2", description: "Subtractions for course 'y'", user_id: u3.id)
e3= Evaluation.create(name: "Maths3", description: "Multiplications for course 'z'", user_id: u3.id)
# Categories
c1 = Category.create(name: "Addition", user_id: u3.id)
c2 = Category.create(name: "Subtraction", user_id: u3.id)
c3 = Category.create(name: "Multiplication", user_id: u3.id)
# Questions for e1
q1 = Question.create(content: "1 + 1", category_id: c1.id, user_id: u3.id)
q2 = Question.create(content: "1 + 2", category_id: c1.id, user_id: u3.id)
q3 = Question.create(content: "1 + 3", category_id: c1.id, user_id: u3.id)
q4 = Question.create(content: "1 + 4", category_id: c1.id, user_id: u3.id)

# Questions for e2
q5 = Question.create(content: "1 - 1", category_id: c2.id, user_id: u3.id)
q6 = Question.create(content: "2 - 1", category_id: c2.id, user_id: u3.id)
q7 = Question.create(content: "3 - 1", category_id: c2.id, user_id: u3.id)
q8 = Question.create(content: "4 - 1", category_id: c2.id, user_id: u3.id)

# Questions for e1
q9 = Question.create(content: "1 x 1", category_id: c3.id, user_id: u3.id)
q10 = Question.create(content: "1 x 2", category_id: c3.id, user_id: u3.id)
q11 = Question.create(content: "1 x 3", category_id: c3.id, user_id: u3.id)
q12 = Question.create(content: "1 x 4", category_id: c3.id, user_id: u3.id)


# e1-Questions associations
qe1 = QuestionsToEvaluate.create(evaluation_id: e1.id, question_id: q1.id)
qe2 = QuestionsToEvaluate.create(evaluation_id: e1.id, question_id: q2.id)
qe3 = QuestionsToEvaluate.create(evaluation_id: e1.id, question_id: q3.id)
qe4 = QuestionsToEvaluate.create(evaluation_id: e1.id, question_id: q4.id)

# e2-Questions associations
qe5 = QuestionsToEvaluate.create(evaluation_id: e2.id, question_id: q5.id)
qe6 = QuestionsToEvaluate.create(evaluation_id: e2.id, question_id: q6.id)
qe7 = QuestionsToEvaluate.create(evaluation_id: e2.id, question_id: q7.id)
qe8 = QuestionsToEvaluate.create(evaluation_id: e2.id, question_id: q8.id)

# e2-Questions associations
qe9 = QuestionsToEvaluate.create(evaluation_id: e3.id, question_id: q9.id)
qe10 = QuestionsToEvaluate.create(evaluation_id: e3.id, question_id: q10.id)
qe11 = QuestionsToEvaluate.create(evaluation_id: e3.id, question_id: q11.id)
qe12 = QuestionsToEvaluate.create(evaluation_id: e3.id, question_id: q12.id)


# Answers for e1
a1 = Answer.create(content: "1", value: false, question_id: q1.id)
a2 = Answer.create(content: "2", value: true, question_id: q1.id)
a3 = Answer.create(content: "3", value: false, question_id: q1.id)
a4 = Answer.create(content: "4", value: false, question_id: q1.id)

a5 = Answer.create(content: "1", value: false, question_id: q2.id)
a6 = Answer.create(content: "2", value: false, question_id: q2.id)
a7 = Answer.create(content: "3", value: true, question_id: q2.id)
a8 = Answer.create(content: "4", value: false, question_id: q2.id)

a9 = Answer.create(content: "1", value: false, question_id: q3.id)
a10 = Answer.create(content: "2", value: false, question_id: q3.id)
a11 = Answer.create(content: "3", value: false, question_id: q3.id)
a12 = Answer.create(content: "4", value: true, question_id: q3.id)

a13 = Answer.create(content: "2", value: false, question_id: q4.id)
a14 = Answer.create(content: "3", value: false, question_id: q4.id)
a15 = Answer.create(content: "4", value: false, question_id: q4.id)
a16 = Answer.create(content: "5", value: true, question_id: q4.id)

# Answers for e2
a17 = Answer.create(content: "0", value: true, question_id: q5.id)
a18 = Answer.create(content: "1", value: false, question_id: q5.id)
a19 = Answer.create(content: "2", value: false, question_id: q5.id)
a20 = Answer.create(content: "3", value: false, question_id: q5.id)

a21 = Answer.create(content: "1", value: true, question_id: q6.id)
a22 = Answer.create(content: "2", value: false, question_id: q6.id)
a23 = Answer.create(content: "3", value: false, question_id: q6.id)
a24 = Answer.create(content: "4", value: false, question_id: q6.id)

a25 = Answer.create(content: "1", value: false, question_id: q7.id)
a26 = Answer.create(content: "2", value: true, question_id: q7.id)
a27 = Answer.create(content: "3", value: false, question_id: q7.id)
a28 = Answer.create(content: "4", value: false, question_id: q7.id)

a29 = Answer.create(content: "2", value: false, question_id: q8.id)
a30 = Answer.create(content: "3", value: true, question_id: q8.id)
a31 = Answer.create(content: "4", value: false, question_id: q8.id)
a32 = Answer.create(content: "5", value: false, question_id: q8.id)

# Answers for e3
a33 = Answer.create(content: "1", value: true, question_id: q9.id)
a34 = Answer.create(content: "2", value: false, question_id: q9.id)
a35 = Answer.create(content: "3", value: false, question_id: q9.id)
a35 = Answer.create(content: "4", value: false, question_id: q9.id)

a37 = Answer.create(content: "1", value: false, question_id: q10.id)
a38 = Answer.create(content: "2", value: true, question_id: q10.id)
a39 = Answer.create(content: "3", value: false, question_id: q10.id)
a40 = Answer.create(content: "4", value: false, question_id: q10.id)

a41 = Answer.create(content: "1", value: false, question_id: q11.id)
a42 = Answer.create(content: "2", value: false, question_id: q11.id)
a43 = Answer.create(content: "3", value: true, question_id: q11.id)
a44 = Answer.create(content: "4", value: false, question_id: q11.id)

a45 = Answer.create(content: "2", value: false, question_id: q12.id)
a46 = Answer.create(content: "3", value: false, question_id: q12.id)
a47 = Answer.create(content: "4", value: true, question_id: q12.id)
a48 = Answer.create(content: "5", value: false, question_id: q12.id)