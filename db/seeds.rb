# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Ticket.delete_all

Ticket.create(
	topic: 'Management',
	body: 'Seed-ticket #1')

Ticket.create(
	topic: 'Afsprakenbureau',
	body: 'Seed-ticket number two...')