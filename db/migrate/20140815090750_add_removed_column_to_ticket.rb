class AddRemovedColumnToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :removed, :boolean, :default => false
  end
end
