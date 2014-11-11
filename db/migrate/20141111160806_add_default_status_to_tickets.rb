class AddDefaultStatusToTickets < ActiveRecord::Migration
  def up
    change_column :tickets, :status, :text, :default => 'open'
  end

  def down
    change_column :tickets, :status, :text, :default => false
  end
end
