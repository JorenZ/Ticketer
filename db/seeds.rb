Ticket.delete_all

# identical to /scripts/create_many_tickets.rb
for i in 1..7 do
  Ticket.create( topic: "callcenter", body: "Automatically created ticket #{i}" )
  Ticket.create( topic: "finance", body: "Automatically created ticket #{i}" )
  Ticket.create( topic: "management", body: "Automatically created ticket #{i}" )
end

User.delete_all
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
User.create(
  name: 'User',
  role: 'user',
  email: 'user@studentaanhuis.nl',
  password: 'passwordone',
  password_confirmation: 'passwordone',
  password_digest: '$2a$10$ibV9itmyBdNik93gRIlIRO9HVeM0fdwTNKylv4fOwrpVYKD6RN7Z2' # actual digest for 'passwordone'
  )
