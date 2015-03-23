require 'rails_helper'

describe TicketsController do

  before do
    @ticket1 = FactoryGirl.create :ticket, :management
    @ticket2 = FactoryGirl.create :ticket, :finance
    @ticket3 = FactoryGirl.create :ticket, :callcenter
  end

  it "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tickets)
  end

  it "should get new" do
    get :new
    assert_response :success
  end

  it "should create ticket" do
    expect{ 
      @createticket = FactoryGirl.create :ticket
    }.to change{ Ticket.count }.by( 1 )

    assert_response :success
  end

  it "should show ticket" do
    get :show, id: @ticket1.id
    assert_response :success
  end

  it "should get edit" do
    get :edit, id: @ticket1.id
    assert_response :success
  end

  it "should update ticket" do
    put :update, id: @ticket1, ticket: { body: @ticket2.body, topic: @ticket2.topic }
    assert_redirected_to ticket_path(assigns(:ticket))
  end

end
