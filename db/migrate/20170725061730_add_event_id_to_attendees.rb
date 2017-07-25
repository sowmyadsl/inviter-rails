class AddEventIdToAttendees < ActiveRecord::Migration[5.1]
  def change
    add_column :attendees, :event_id, :integer
  end
end
