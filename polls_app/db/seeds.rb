# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ username: 'rubiest404' }, { username: 'rainrues'}, { username: 'polinavulakh'}])

polls = Poll.create([{ title: 'Best Language', author_id: users.first.id }, { title: 'Favorite Food', author_id: users.third.id }, { title: 'Programming Experience', author_id: users.third.id }])

questions = Question.create([{ body: 'What is the best programming language?', poll_id: polls.first.id }, { body: 'What is your favorite food?', poll_id: polls.second.id }, { body: 'Do you have a CS degree?', poll_id: polls.third.id }, { body: 'How long have you been coding?',poll_id: polls.third.id }])

answer_choices = AnswerChoice.create([{ body: 'Ruby', question_id: questions.first.id }, { body: 'Haskell', question_id: questions.first.id }, { body: 'Java', question_id: questions.first.id }, { body: 'Pizza', question_id: questions.second.id }, { body: 'Sushi' , question_id: questions.second.id }, { body: 'Something else' , question_id: questions.second.id }, { body: 'Yes', question_id: questions.third.id }, { body: 'No', question_id: questions.third.id }, { body: '0 - 6 months', question_id: questions.fourth.id }, { body: '6 months to 1 year', question_id: questions.fourth.id }, { body: '1+ years', question_id: questions.fourth.id }])

responses = Response.create([{ answer_choice_id: answer_choices.first.id, responder_id: users.first.id }, { answer_choice_id: answer_choices.first.id, responder_id: users.second.id }, { answer_choice_id: answer_choices.second.id, responder_id: users.third.id}, { answer_choice_id: answer_choices.fourth.id, responder_id: users.second.id}, { answer_choice_id: answer_choices.fifth.id, responder_id: users.third.id} ])