class CreateEvent < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.column :name, :string
      t.column :description, :text
      t.column :date, :date
      t.column :start, :time
      t.column :location_id, :integer

      t.timestamps
    end
  end
end
