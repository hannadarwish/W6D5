# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Cat.create!(name:'Garfield',sex: 'M' ,color: "orange" ,birth_date: '1970-03-02' ,description:'Loves lasagna')

Cat.create!(name: 'Princess' ,sex:'F',color: 'white' ,birth_date:'2000-01-01' ,description:'Wears a crown')

Cat.create!(name: 'Tom' ,sex: 'M' ,color:'black' ,birth_date:'1960-02-02' ,description:'hates Jerry')


Cat.create!(name:'Odie',sex: 'M' ,color:'brown' ,birth_date:'2015-09-23' ,description:'totally not a dog')

