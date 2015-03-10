class TicketsController < ApplicationController

  def index
    @tickets = Ticket.paginate page: params[ :page ], order: [ 'topic asc', 'body asc' ], per_page: 15
  end

  def show
    @ticket = Ticket.find( params[:id] )
  end

  def new
    @ticket = Ticket.new
  end

  def edit
    @ticket = Ticket.find(params[:id])
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

    respond_to do |format|
      if @ticket.update_attributes( params[:ticket] )
        format.html { redirect_to @ticket, notice: 'Ticket updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def close
    @ticket = Ticket.find( params[:id] )

    respond_to do |format|
      if @ticket.update_attributes( :status => 'closed' )
        format.html { redirect_to @ticket, notice: 'Ticket closed.' }
      else
        format.html { render action: "show" }
      end
    end
  end

  def remove
    @ticket = Ticket.find( params[:id] )

    respond_to do |format|
      if @ticket.update_attributes( :status => 'removed' )
        format.html { redirect_to @ticket, notice: 'Ticket removed.' }
      else
        format.html { render action: "show" }
      end
    end
  end

  def reopen
    @ticket = Ticket.find( params[:id] )

    respond_to do |format|
      if @ticket.update_attributes( :status => 'open' )
        format.html { redirect_to @ticket, notice: 'Ticket reopened.' }
      else
        format.html { render action: "show" }
      end
    end
  end

  private

  def ticket_params
    params.require( :ticket ).permit( :body, :topic, :user_id, :status, :assignment_status )
  end

end