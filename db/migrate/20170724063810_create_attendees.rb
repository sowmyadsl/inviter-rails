class CreateAttendees < ActiveRecord::Migration[5.1]
  def change
    create_table :attendees do |t|
      t.column :name, :string
      t.column :email_address, :string

      t.timestamps
    end
  end
end
