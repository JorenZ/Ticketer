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
	topic: 'Callcenter',
	body: 'Seed-ticket number two...')

User.create(
  name: 'Joren',
  role: 'administrator',
  email: 'joren@studentaanhuis.nl',
  password: 'passwordone',
  password_confirmation: 'passwordone',
  password_digest: '$2a$10$ibV9itmyBdNik93gRIlIRO9HVeM0fdwTNKylv4fOwrpVYKD6RN7Z2' # actual digest for 'passwordone'
  )

User.create(
  name: 'Programmerdude',
  role: 'programmer',
  email: 'programmer@studentaanhuis.nl',
  password: 'passwordone',
  password_confirmation: 'passwordone',
  password_digest: '$2a$10$ibV9itmyBdNik93gRIlIRO9HVeM0fdwTNKylv4fOwrpVYKD6RN7Z2' # actual digest for 'passwordone'
  )
