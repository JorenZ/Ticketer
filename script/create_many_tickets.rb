for i in 1..5 do
  Ticket.create( topic: "Management", body: "Automatically created ticket #{i}" )
  Ticket.create( topic: "Finance", body: "Automatically created ticket #{i}" )
  Ticket.create( topic: "Afsprakenbureau", body: "Automatically created ticket #{i}" )
end