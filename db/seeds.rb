# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Composer.create!(username: "Tom Petty", email: "t.petty@email.com", password_digest: "password")
Composer.create!(username: "Honey Dijon", email: "h.dijon@email.com", password_digest: "password")
Composer.create!(username: "Jack White", email: "j.white@email.com", password_digest: "password")


Repertoire.create!(title: "Rock", composer_id: "1")
Repertoire.create!(title: "Metal", composer_id: "1")
Repertoire.create!(title: "House", composer_id: "2")
Repertoire.create!(title: "Rock", composer_id: "3")
Upbeat.create!(title: "Fantasy", composer_id: "1", repertoire_id: "1")
Upbeat.create!(title: "Fantasy", composer_id: "2", repertoire_id: "2")
Upbeat.create!(title: "Fantasy", composer_id: "2", repertoire_id: "1")
Upbeat.create!(title: "Fantasy", composer_id: "1", repertoire_id: "2")
Upbeat.create!(title: "Block Rockin' Beats", composer_id: "3", repertoire_id: "2")


