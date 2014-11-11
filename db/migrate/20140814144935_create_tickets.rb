class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :topic
      t.string :body
      t.string :status
      t.string :assignment_status, :default => 'unassigned'
      t.integer :user_id

      t.timestamps
    end
  end
end
