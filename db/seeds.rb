# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
posts = [
    { title: 'エクソシスター・ミカエリス', number: 3, price: '500円'},
    { title: 'エクソシスター・ソフィア', number: 1, price: '500円'},
    { title: 'エクソシスター・ステラ', number: 3, price: '500円'},
    ]
Post.create(posts)