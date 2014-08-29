Ticket.transaction do
	(1..24).each do |i|
		Ticket.create( topic: "Management", body: "Auto-ticket number #{i}" )
		Ticket.create( topic: "Finance", body: "Auto-ticket number #{i}" )
		Ticket.create( topic: "Afsprakenbureau", body: "Auto-ticket number #{i}" )
	end
end