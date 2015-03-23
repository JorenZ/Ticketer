for i in 1..5 do
  Ticket.create( topic: "Management", body: "Automatically created ticket #{i}" )
  Ticket.create( topic: "Finance", body: "Automatically created ticket #{i}" )
  Ticket.create( topic: "Callcenter", body: "Automatically created ticket #{i}" )
end