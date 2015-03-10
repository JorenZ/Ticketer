class ChangeTicketStatusColumnToString < ActiveRecord::Migration
  def up
    change_column :tickets, :status, :string
  end

  def down
    change_column :tickets, :status, :text
  end
end
