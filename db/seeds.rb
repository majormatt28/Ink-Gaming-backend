# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
Comment.reset_pk_sequence
User.destroy_all
User.reset_pk_sequence
Post.destroy_all
Post.reset_pk_sequence
ConsolePost.destroy_all
ConsolePost.reset_pk_sequence

require 'faker'

console_tags = ['Nintendo', 'Playstation', 'Xbox', 'PC']

user1 = User.create(username: "Maseo", password: "abc123", email: "matt@matt.com")

user2 = User.create(username: "Ashley", password: "abc123", email: "ash@ash.com")

post1 = Post.create(
    user_id: User.all.sample.id,
    title: "A quick guide on how to beat the big bad",
    content: "How to beat Magnamalo",
    link: '<iframe width="2544" height="1160" src="https://www.youtube.com/embed/trsHBGr2FVM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
    media_type: "video"
)

post2 = Post.create(
    user_id: User.all.sample.id,
    title: "Quest help!",
    content: "Hey could anyone help out with this quest in MH:Rise?",
    media_type: "image",
    link: "http://oyster.ignimgs.com/mediawiki/apis.ign.com/monster-hunter-rise/3/32/Rampagemhrsrankv4-1616715012283.00_00_09_12.Still009.jpg"
)

post3 = Post.create(
    user_id: User.all.sample.id,
    title: "New Pokemon game",
    content: "What are your thoughts on that new pokemon game that was annouced?",
    media_type: "image",
    link: "https://static0.srcdn.com/wordpress/wp-content/uploads/2021/02/Pokemon-Legends-Arceus-What-To-Know-.jpg"
)

comment1 = Comment.create(
    user_id: User.all.sample.id,
    post_id: Post.all.sample.id,
    comment: Faker::Movies::StarWars.quote(character: "leia_organa")
)

comment2 = Comment.create(
    user_id: User.all.sample.id,
    post_id: Post.all.sample.id,
    comment: Faker::Movies::StarWars.quote(character: "han_solo")
)

comment3 = Comment.create(
    user_id: User.all.sample.id,
    post_id: Post.all.sample.id,
    comment: Faker::Movies::StarWars.quote(character: "luke_skywalker")
)

tagpost1 = ConsolePost.create(
    console_id: Console.all.sample,
    post_id: Post.all.sample
)

tagpost2 = ConsolePost.create(
    console_id: Console.all.sample,
    post_id: Post.all.sample
)

tagpost3 = ConsolePost.create(
    console_id: Console.all.sample,
    post_id: Post.all.sample
)

5.times do 
    Console.create(
        console_name: console_tags.sample
    )
end


puts "Properly Seeded"