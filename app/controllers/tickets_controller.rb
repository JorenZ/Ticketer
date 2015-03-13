class TicketsController < ApplicationController

  def index  
    @current_query = params[:q]

    # set the filters to include all tickets when the 'all' selection is in effect
    if @current_query
      @current_status_filter = ( @current_query[:status_in].nil? ? nil : @current_query[:status_in] )
      @current_assignment_status_filter = ( @current_query[:assignment_status_in].nil? ? nil : @current_query[:assignment_status_in] )

      @current_query[:status_in] = Ticket::ALL_STATUSES if @current_query[:status_in] == 'all'
      @current_query[:assignment_status_in] = Ticket::ALL_ASSIGNMENT_STATUSES if @current_query[:assignment_status_in] == 'all'
    end

    @ticket_search = Ticket.ransack( params[:q] )
    @tickets = @ticket_search.result.includes( :user )
    @tickets.paginate page: params[ :page ], order: [ 'topic asc', 'body asc' ], per_page: 15
  end

  # since searches use HTTP POST instead of HTTP GET
  def search
    index
    render :index
  end

  def show
    @ticket = Ticket.find( params[:id] )
  end

  def new
    @ticket = Ticket.new
  end

  def edit
    @ticket = Ticket.find( params[:id] )
  end

  def create
    @ticket = Ticket.new( ticket_params )
 
    respond_to do |format|
      if @ticket.save
        format.html { redirect_to @ticket, notice: 'Ticket created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @ticket = Ticket.find( params[:id] )
    @event = params[:event].blank? ? nil : params[:event].to_sym

    case @event
      when :open, :reopen, :close, :remove
        @ticket.send(@event)
        @ticket.save
      else
        new_attributes = params[:ticket]
        @ticket.attributes = new_attributes
    end

    respond_to do |format|
      if @event.nil? && @ticket.save
        format.html { redirect_to @ticket, notice: "Ticket updated" }
      elsif @ticket.save
        format.html { redirect_to @ticket, notice: "Ticket status updated" }
      else        
        format.html { render action: "edit" }
      end
    end
  end

  private

  def ticket_params
    params.require( :ticket ).permit( :body, :topic, :user_id, :status, :assignment_status )
  end

end