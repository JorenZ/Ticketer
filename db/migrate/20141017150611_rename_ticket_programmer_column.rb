class RenameTicketProgrammerColumn < ActiveRecord::Migration
  def up
    rename_column :tickets, :programmer_id, :user_id
  end

  def down
    rename_column :tickets, :user_id, :programmer_id
  end
end
