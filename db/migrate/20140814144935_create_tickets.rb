class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :topic
      t.string :body
      t.string :state

      t.timestamps
    end
  end
end
