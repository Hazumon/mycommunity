class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :event_avatar
      t.string :name, null: false
      t.date :date, null: false
      t.time :time, null: false
      t.string :location, null: false
      t.timestamps
    end
  end
end
