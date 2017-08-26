class CreateMeetups < ActiveRecord::Migration[5.1]
  def change
    create_table :meetups do |t|
      t.string :name, null: false
      t.string :link
      t.float :lat
      t.float :lon
      t.string :who
      t.time :time
      t.text :description
    end
  end
end
