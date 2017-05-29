# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


donations = Donation.create([{description: "Doação ao Médicos Sem Fronteiras", value: 1500.00}, 
	{description: "Donation to Doctors Without Borders", value: 1200.00, user_id: 1}, 
	{description: "Donation to Doctors Without Borders", value: 800.00, user_id: 1}, 
	{description: "Donation to Doctors Without Borders", value: 150.00, user_id: 1}, 
	{description: "Donation to Doctors Without Borders", value: 300.00, user_id: 1},
	{description: "Donation to Bill And Melinda Gates Foundation", value: 1500.00, user_id: 1},
	{description: "Donation to Bill And Melinda Gates Foundation", value: 3000.00, user_id: 1},
	{description: "Donation to Bill And Melinda Gates Foundation", value: 500.00, user_id: 1},
	{description: "Donation to Bill And Melinda Gates Foundation", value: 800.00, user_id: 1},
	{description: "Donation to Feeding America", value: 1000.00, user_id: 1},
	{description: "Donation to Feeding America", value: 1300.00, user_id: 1},
	{description: "Donation to Feeding America", value: 100.00, user_id: 1},
	{description: "Donation to Feeding America", value: 300.00, user_id: 1},
	{description: "Donation to Feeding America", value: 200.00, user_id: 1},
	{description: "Doação ao Médicos Sem Fronteiras", value: 400.00, user_id: 1},
	{description: "Doação ao Médicos Sem Fronteiras", value: 1800.00, user_id: 1},
	{description: "Doação ao Médicos Sem Fronteiras", value: 100.00, user_id: 1},
	{description: "Doação ao Médicos Sem Fronteiras", value: 180.00, user_id: 1}])