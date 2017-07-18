# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{email: "jmartins@email.com", password: '123123', password_confirmation: '123123', name: "Jonathan Silva Martins", cpf: "12345678900"},
	{email: "gribeiro@email.com", password: '123123', password_confirmation: '123123', name: "Giovani Ribeiro", cpf: "12345678901"},
	{email: "manzullin@email.com", password: '123123', password_confirmation: '123123', name: "Matheus Anzullin", cpf: "12345678902"},
	{email: "esilva@email.com", password: '123123', password_confirmation: '123123', name: "Elaine Silva", cpf: "12345678903"},
	{email: "jsilveira@email.com", password: '123123', password_confirmation: '123123', name: "João Silveira", cpf: "12345678904"},
	{email: "moliveira@email.com", password: '123123', password_confirmation: '123123', name: "Marcela Oliveira", cpf: "12345678905"},
	{email: "asantos@email.com", password: '123123', password_confirmation: '123123', name: "Andréia Santos", cpf: "12345678906"},
	{email: "emachado@email.com", password: '123123', password_confirmation: '123123', name: "Eliza Machado", cpf: "12345678907"},
	{email: "gcutler@email.com", password: '123123', password_confirmation: '123123', name: "Gretchen Cutler", cpf: "12345678908"},
	{email: "jshiveoverly@email.com", password: '123123', password_confirmation: '123123', name: "Jimmy Shive-Overly", cpf: "12345678909"},
	{email: "rgreen@email.com", password: '123123', password_confirmation: '123123', name: "Rachel Green", cpf: "12345678910"},
	{email: "mgeller@email.com", password: '123123', password_confirmation: '123123', name: "Monica Geller", cpf: "12345678911"},
	{email: "cbing@email.com", password: '123123', password_confirmation: '123123', name: "Chandler Bing", cpf: "12345678912"},
	{email: "jtribbiani@email.com", password: '123123', password_confirmation: '123123', name: "Joey Tribbiani", cpf: "12345678913"},])


Charity.create([{email: "msf@email.com", password: '123123', password_confirmation: '123123', name: "Médicos Sem Fronteiras", charity_type: "Outros", cnpj: "12345678914"},
	{email: "fbmg@email.com", password: '123123', password_confirmation: '123123', name: "Fundação Bill e Melinda Gates", charity_type: "Outros", cnpj: "12345678915"},
	{email: "pd@email.com", password: '123123', password_confirmation: '123123', name: "Patas Dadas", charity_type: "Canil", cnpj: "12345678916"}])

Project.create([{name: "Ração para Cachorro", description: "Precisamos de dinheiro para comprar ração para os 34 cachorros que estão sobre os nossos cuidados.", goal_amount: 500, current_amount: 0, project_type: "Alimentos", user_id: 17},
	{name: "Roupas para os Cachorros", description: "Com a chegada do inverno, precisamos comprar roupas mais quentes para os cachorros menos adaptados ao clima frio.", goal_amount: 1000, current_amount: 0, project_type: "Roupas", user_id: 17},
	{name: "Consulta com um médico veterinário", description: "Um dos nossos cachorros passou mal durante o fim de semana do dia 03/06/95 e nós precisamos levar ele para um veterinário, agora precisamos de ajuda para podermos pagar a conta.", goal_amount: 100, current_amount: 0, project_type: "Saúde", user_id: 17}])

Donation.create([{description: "Doação ao Médicos Sem Fronteiras", value: 1500.00, user_id: 1, recipient_type: "Charity", recipient_id: 15},
	{description: "Doação ao Médicos Sem Fronteiras", value: 1100.00, user_id: 2, recipient_type: "Charity", recipient_id: 15},
	{description: "Doação ao Médicos Sem Fronteiras", value: 600.00, user_id: 3, recipient_type: "Charity", recipient_id: 15},
	{description: "Doação ao Médicos Sem Fronteiras", value: 100.00, user_id: 4, recipient_type: "Charity", recipient_id: 15},
	{description: "Doação ao Médicos Sem Fronteiras", value: 220.00, user_id: 5, recipient_type: "Charity", recipient_id: 15},
	{description: "Doação ao Médicos Sem Fronteiras", value: 1000.00, user_id: 6, recipient_type: "Charity", recipient_id: 15},
	{description: "Doação ao Médicos Sem Fronteiras", value: 500.00, user_id: 7, recipient_type: "Charity", recipient_id: 15},
	{description: "Doação ao Médicos Sem Fronteiras", value: 300.00, user_id: 8, recipient_type: "Charity", recipient_id: 15},
	{description: "Doação ao Médicos Sem Fronteiras", value: 100.00, user_id: 9, recipient_type: "Charity", recipient_id: 15},
	{description: "Doação ao Médicos Sem Fronteiras", value: 100.00, user_id: 10, recipient_type: "Charity", recipient_id: 15},
	{description: "Doação ao Médicos Sem Fronteiras", value: 200.00, user_id: 11, recipient_type: "Charity", recipient_id: 15},
	{description: "Doação ao Médicos Sem Fronteiras", value: 200.00, user_id: 12, recipient_type: "Charity", recipient_id: 15},
	{description: "Doação ao Médicos Sem Fronteiras", value: 50.00, user_id: 13, recipient_type: "Charity", recipient_id: 15},
	{description: "Doação ao Médicos Sem Fronteiras", value: 20.00, user_id: 14, recipient_type: "Charity", recipient_id: 15},
	{description: "Doação para a Fundação Bill e Melinda Gates", value: 1500.00, recipient_type: "Charity", user_id: 1, recipient_id: 16},
	{description: "Doação para a Fundação Bill e Melinda Gates", value: 3000.00, recipient_type: "Charity", user_id: 2, recipient_id: 16},
	{description: "Doação para a Fundação Bill e Melinda Gates", value: 500.00, recipient_type: "Charity", user_id: 3, recipient_id: 16},
	{description: "Doação para a Fundação Bill e Melinda Gates", value: 800.00, recipient_type: "Charity", user_id: 4, recipient_id: 16},
	{description: "Doação para a Fundação Bill e Melinda Gates", value: 1500.00, recipient_type: "Charity", user_id: 5, recipient_id: 16},
	{description: "Doação para a Fundação Bill e Melinda Gates", value: 3000.00, recipient_type: "Charity", user_id: 6, recipient_id: 16},
	{description: "Doação para a Fundação Bill e Melinda Gates", value: 500.00, recipient_type: "Charity", user_id: 7, recipient_id: 16},
	{description: "Doação para a Fundação Bill e Melinda Gates", value: 800.00, recipient_type: "Charity", user_id: 8, recipient_id: 16},
	{description: "Doação para a Fundação Bill e Melinda Gates", value: 1500.00, recipient_type: "Charity", user_id: 9, recipient_id: 16},
	{description: "Doação para a Fundação Bill e Melinda Gates", value: 3000.00, recipient_type: "Charity", user_id: 10, recipient_id: 16},
	{description: "Doação para a Fundação Bill e Melinda Gates", value: 500.00, recipient_type: "Charity", user_id: 11, recipient_id: 16},
	{description: "Doação para a Fundação Bill e Melinda Gates", value: 800.00, recipient_type: "Charity", user_id: 12, recipient_id: 16},
	{description: "Doação para a Fundação Bill e Melinda Gates", value: 1500.00, recipient_type: "Charity", user_id: 13, recipient_id: 16},
	{description: "Doação para a Fundação Bill e Melinda Gates", value: 3000.00, recipient_type: "Charity", user_id: 14, recipient_id: 16},
	{description: "Doação para o Patas Dadas", value: 1000.00, user_id: 1, recipient_type: "Charity", recipient_id: 17},
	{description: "Doação para o Patas Dadas", value: 1300.00, user_id: 2, recipient_type: "Charity", recipient_id: 17},
	{description: "Doação para o Patas Dadas", value: 100.00, user_id: 3, recipient_type: "Charity", recipient_id: 17},
	{description: "Doação para o Patas Dadas", value: 300.00, user_id: 4, recipient_type: "Charity", recipient_id: 17},
	{description: "Doação para o Patas Dadas", value: 1000.00, user_id: 5, recipient_type: "Charity", recipient_id: 17},
	{description: "Doação para o Patas Dadas", value: 1300.00, user_id: 6, recipient_type: "Charity", recipient_id: 17},
	{description: "Doação para o Patas Dadas", value: 100.00, user_id: 7, recipient_type: "Charity", recipient_id: 17},
	{description: "Doação para o Patas Dadas", value: 300.00, user_id: 8, recipient_type: "Charity", recipient_id: 17},
	{description: "Doação para o Patas Dadas", value: 1000.00, user_id: 9, recipient_type: "Charity", recipient_id: 17},
	{description: "Doação para o Patas Dadas", value: 1300.00, user_id: 10, recipient_type: "Charity", recipient_id: 17},
	{description: "Doação para o Patas Dadas", value: 100.00, user_id: 11, recipient_type: "Charity", recipient_id: 17},
	{description: "Doação para o Patas Dadas", value: 300.00, user_id: 12, recipient_type: "Charity", recipient_id: 17},
	{description: "Doação para o Patas Dadas", value: 200.00, user_id: 13, recipient_type: "Charity", recipient_id: 17}])
