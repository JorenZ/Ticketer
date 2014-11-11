class OverviewController < ApplicationController
  def index
  		@tickets = Ticket.paginate page: params[ :page ], order: [ 'topic asc', 'body asc' ], per_page: 15
  end
end
