class OverviewController < ApplicationController
  def index
  		@tickets = Ticket.order(:topic, :body)
  end
end
