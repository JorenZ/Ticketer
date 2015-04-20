for i in 1..7 do
  Ticket.create( topic: "callcenter", body: "Automatically created ticket #{i}" )
  Ticket.create( topic: "finance", body: "Automatically created ticket #{i}" )
  Ticket.create( topic: "management", body: "Automatically created ticket #{i}" )
end