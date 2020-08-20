# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all
Comment.destroy_all
Follow.destroy_all


u1 = User.create(name:'Steven')
u2 = User.create(name:'Jim')
u3 = User.create(name:'Tom')

p1 = Post.create(message:'Hello', user_id:u1.id)
p2 = Post.create(message:'Yo!', user_id:u2.id)

c1 = Comment.create(message:'Wat up!', user_id:u2.id, post_id:p1.id)
c2 = Comment.create(message:'Sup!', user_id:u3.id, post_id:p1.id)

c3 = Comment.create(message:'Hi!', user_id:u3.id, post_id:p2.id)

f1 = Follow.create(user_id:u3.id, post_id:p2.id)
f2 = Follow.create(user_id:u1.id, post_id:p2.id)