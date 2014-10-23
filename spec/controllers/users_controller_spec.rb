require 'rails_helper'

describe UsersController do

  before do
    @user1 = FactoryGirl.create :user
    @user2 = FactoryGirl.create :user, email: "emailtwo@example.com"
  end

  it "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  it "should get new" do
    get :new
    assert_response :success
  end

  it "should create user" do
    expect{ 
      @createuser = FactoryGirl.create :user, :email => "uniqueemail@example.com"
    }.to change{ User.count }.by( 1 )

    assert_response :success
  end

  it "should show user" do
    get :show, id: @user1.id
    assert_response :success
  end

  it "should get edit" do
    get :edit, id: @user1.id
    assert_response :success
  end

  it "should update user" do
    put :update, id: @user1, user: { email: @user2.email, role: @user2.role }
    assert_response :success
  end

end
