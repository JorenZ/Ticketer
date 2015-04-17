class TicketsController < ApplicationController
  before_filter :logged_in_user

  def index  
    @current_query = params[:q]

    if @current_query
      # if applicable, set the filter to 'all' if it is currently ALL_STATUSES
      @current_query[:status_in] = 'all'            if @current_query[:status_in] == Ticket::ALL_STATUSES
      @current_query[:assignment_status_in] = 'all' if @current_query[:assignment_status_in] == Ticket::ALL_ASSIGNMENT_STATUSES

      # save the currently applied filter for use in the index view
      @current_status_filter            = ( @current_query[:status_in].nil? ? nil : @current_query[:status_in] )
      @current_assignment_status_filter = ( @current_query[:assignment_status_in].nil? ? nil : @current_query[:assignment_status_in] )
      @current_sort                     = ( @current_query[:s].nil? ? nil : @current_query[:s])

      # if applicable, reset actual filter to ALL_STATUSES instead of the string 'all'
      @current_query[:status_in] = Ticket::ALL_STATUSES                       if @current_query[:status_in] == 'all'
      @current_query[:assignment_status_in] = Ticket::ALL_ASSIGNMENT_STATUSES if @current_query[:assignment_status_in] == 'all'
    end

    @ticket_search = Ticket.ransack( @current_query )
    @tickets = @ticket_search.result.includes( :user )
    @tickets = @tickets.paginate page: params[ :page ]
  end

  # when searches use HTTP POST instead of HTTP GET
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
        format.html { redirect_to @ticket, notice: t( :ticket_created ) }
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
        format.html { redirect_to @ticket, notice: t( :ticket_updated ) }
      elsif @ticket.save
        format.html { redirect_to @ticket, notice: t( :ticket_status_updated ) }
      else        
        format.html { render action: "edit" }
      end
    end
  end

  private

  def ticket_params
    params.require( :ticket ).permit( :body, :topic, :user_id, :status, :assignment_status, :creator_id )
  end

  def logged_in_user
    unless logged_in?
      flash[ :notice ] = t( :please_log_in_first )
      redirect_to login_path
    end
  end
end