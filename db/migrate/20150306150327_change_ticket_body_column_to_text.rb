class ChangeTicketBodyColumnToText < ActiveRecord::Migration
  def up
    change_column :tickets, :body, :text
  end

  def down
    change_column :tickets, :body, :string
  end
end
