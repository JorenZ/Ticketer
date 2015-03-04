class TicketsController < ApplicationController

  def index
      @tickets = Ticket.paginate page: params[ :page ], order: [ 'topic asc', 'body asc' ], per_page: 15

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @ticket = Ticket.find( params[:id] )

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def new
    @ticket = Ticket.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def create
    @ticket = Ticket.new( ticket_params )
 
    respond_to do |format|
      if @ticket.save
        format.html { redirect_to @ticket, notice: 'Ticket was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @ticket = Ticket.find( params[:id] )

    respond_to do |format|
      if @ticket.update_attributes( params[:ticket] )
        format.html { redirect_to @ticket, notice: 'Ticket was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # def close
  #   @ticket = Ticket.find( params[:id] )

  #   respond_to do |format|
  #     if @ticket.update_attributes( params[:ticket] )
  #       format.html { redirect_to @ticket, notice: 'Ticket was successfully updated.' }
  #     else
  #       format.html { render action: "show" }
  #     end
  #   end
  # end

  private

  def ticket_params
    params.require( :ticket ).permit( :body, :topic, :user_id, :status, :assignment_status )
  end

end