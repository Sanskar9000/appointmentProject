# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	doctor = Doctor.create!([
	{email:'sonimbbs@example.com',firstname:'shivam',lastname:'soni',mobile:'9876543210',password:'112211',password_confirmation:'112211'},

	{email:'rathipawan89@example.com',firstname:'Pawan',lastname:'Rathi',mobile:'7894561230',password:'112211',password_confirmation:'112211'},

	{email:'Sathe788@example.com',firstname:'Milind',lastname:'Sathe',mobile:'9563214785',password:'112211',password_confirmation:'112211'},

	{email:'AgarwalMy@example.com',firstname:'Sunit',lastname:' Agarwal',mobile:'8563214785',password:'112211',password_confirmation:'112211'},

	{email:'SinhaSahab@example.com',firstname:'Sumit',lastname:'Sinha',mobile:'9563210369',password:'112211',password_confirmation:'112211'},

	{email:'drsushmita@example.com',firstname:'Sushmita',lastname:'Mukharjee',mobile:'7856301495',password:'112211',password_confirmation:'112211'}
	])