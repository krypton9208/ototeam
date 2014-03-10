class CreateEventParticipants < ActiveRecord::Migration
  def change
    create_table :event_participants do |t|
      t.string :state
      t.integer :event_id
      t.integer :friend_id

      t.timestamps
    end
  end
end
