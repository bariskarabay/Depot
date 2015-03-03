# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
Product.create(title: 'Ruby ile programlama',
description:
%{
	<p>
	Ruby diger dilleri benzeyen dinamik bir dildir vs vs vs vs 
	</p>},
	image_url: 'resim.jpg',
	price: 49.95)
