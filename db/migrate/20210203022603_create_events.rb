class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.integer :pet_id
      t.integer :caretaker_id
      t.date :date
      t.string :name

      t.timestamps
    end
  end
end
