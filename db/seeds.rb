# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Journal.destroy_all
Goal.destroy_all
MicroGoal.destroy_all
Resource.destroy_all


# create_table "goals", force: :cascade do |t|
#     t.string "name"
#     t.string "description"
#     t.integer "journal_id"
#   end

#   create_table "journals", force: :cascade do |t|
#     t.string "name"
#     t.string "date"
#     t.string "title"
#     t.string "content"
#     t.integer "user_id"
#   end

#   create_table "micro_goals", force: :cascade do |t|
#     t.string "deadline"
#     t.string "content"
#     t.integer "goal_id"
#   end

#   create_table "resources", force: :cascade do |t|
#     t.string "website_domain"
#     t.string "notes"
#     t.integer "goal_id"
#     t.integer "user_id"
#   end

#   create_table "users", force: :cascade do |t|
#     t.string "username"
#     t.string "email"
#     t.string "password_digest"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.index ["email"], name: "index_users_on_email", unique: true
#   end



5.times do 
    username = Faker::Name.unique
    email = Faker::Internet.email
    password_digest = "123456"
    User.create(username: username, email: email, password_digest: password_digest )
end

5.times do
    name = Faker::Name.name
    date = Faker::Date.between(from: '2021-01-01', to: '2021-12-31')
    title = Faker::Hipster.sentence
    content = Faker::Hipster.paragraph
    user_id = User.all.sample.id
    Journal.create(name: name, date: date, title: title, content: content, user_id: user_id)
end

5.times do
    name = Faker::Name.name
    description = Faker::Hipster.paragraph
    journal_id = Journal.all.sample.id
    Goal.create(name: name, description: description, journal_id: journal_id)
end

5.times do
    deadline = Faker::Date.between(from: '2021-01-01', to: '2021-12-31')
    content = Faker::Hipster.paragraph
    goal_id = Goal.all.sample.id
    MicroGoal.create(deadline: deadline, content: content, goal_id: goal_id)
end

5.times do 
    website_domain = Faker::Internet.url
    notes = Faker::Hipster.paragraph
    goal_id = Goal.all.sample.id
    user_id = User.all.sample.id
    Resource.create(website_domain: website_domain, notes: notes, goal_id: goal_id, user_id: user_id)
end










