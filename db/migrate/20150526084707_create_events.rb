class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start_at
      t.datetime :end_at
      t.string :allDay
      t.integer :user_id
      t.boolean :repeat
      t.date :repeat_until

      t.timestamps
    end
  end
end
